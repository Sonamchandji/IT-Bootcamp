select 
    investor_id,
    investor_name,
    investor_type
from {{ source('pe_dataset') }}