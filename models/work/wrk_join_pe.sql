{{config (materialized = "view")}}


select pe.*, dt.date_id
from {{ref('wrk_hash_pe')}} as pe, {{ref('stg_date')}} as dt

