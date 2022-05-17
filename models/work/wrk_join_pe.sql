{{config (materialized = "table")}}


select pe.*, dt.date_id
from {{ref('wrk_hash_pe')}} as pe, {{ref('stg_date')}} as dt

