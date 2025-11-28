{% macro check_nulls(table_name, Column_list)%}
{% set null_conditions = [] %}
{% for col in column_list %}
{% do null_conditions.append(col ~ 'IS NULL')%}
{% endfor % }


select * ,
case 
when {{null conditions | join(' OR ') }}
THEN 'FAIL' ELSE 'PASS'
end as null_check_status
from {{ table_name}}
{% endmacro %}