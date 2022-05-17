with dt_temp as (
    select
        date
        ,date_id
    from {{ref('stg_date')}}
)

select * 
from {{ref('wrk_hash_pe')}} as pe
    inner join select date_id from dt_temp as dt on pe.date = dt.date

