select 
    country_id, 
    date_id,
    company_id,
    investor_id,
    round,
    amount_raised,
    currency
from {{ source('pe_dataset') }}