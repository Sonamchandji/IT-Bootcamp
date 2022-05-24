{{config (materialized = "table")}}
with pe_hash_dataset as (
   select
    --pe.table_ts
    company_name
    ,growth_stage
    ,country
    ,state_col
    ,city
    ,continent
    ,industry
    ,sub_industry
    ,client__focus
    ,business_model
    ,company_status
    ,table_rnd
    ,amount_raised
    ,currency
    ,table_dt
    ,investor_types
    ,investor_name
    ,company_valuation_usd as company_valuation
    ,valuation_date
    ,SHA1(investor_name||'|'||investor_types) AS investor_id
    ,SHA1(country||'|'||state_col) AS country_id
    ,SHA1(company_name||'|'||industry) AS company_id
    ,dt.date_id
    ,current_timestamp() as insert_update_ts
   from {{ref('stg_raw')}} as pe
   inner join {{ref('stg_date')}} as dt on pe.table_dt = dt.date)

select * from pe_hash_dataset

