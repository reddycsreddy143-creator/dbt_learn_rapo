select
claims_id,
employee_id,
claims_date ,
UPPER(expense_type) as expense_type ,  
claimed_amount NUMBER,
Currency STRING ,
LOWER(Approval_status) as Approval_status,
approver_id STRING
from
RAW.PUBLIC.expense_claims;
