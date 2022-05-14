select 
    country_id integer not null
    country,
    state,
    city,
    continent
from {{ source('pe_dataset') }}