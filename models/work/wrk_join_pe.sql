{{config (materialized = "view")}}
-- with dt_temp as ( 
  --select
     --date
    --,date_id
  --from {{ref('stg_date')}}
--)

select 
company_name
    ,growth_stage
    ,country
    ,state
    ,city
    ,continent
    ,industry
    ,sub_industry
    ,client__focus
    ,business_model
    ,company_status
    ,round
    ,amount_raised
    ,currency
    ,pe.date
    ,investor_types
    ,investor_name
    ,company_valuation
    ,valuation_date
    ,investor_id
    ,company_id
    ,country_id
from {{ref('wrk_hash_pe')}} as pe
join {{ref('stg_date')}} as dt
on pe.date = dt.date
