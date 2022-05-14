select 
    company_id integer not null
    company_name,
    growth_stage,
    industry,
    sub_industry,
    client_focus,
    business_model,
    company_status,
    company_valuation,
    valuation_date
from {{ source('pe_dataset') }}