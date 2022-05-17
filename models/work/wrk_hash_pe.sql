{{config (materialized = "view")}}
with pe_hash_dataset as (
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
    ,date
    ,investor_types
    ,investor_name
    ,company_valuation_usd as company_valuation
    ,valuation_date
    ,SHA1(investor_name||'|'||investor_types) AS investor_id
    ,SHA1(country||'|'||state) AS country_id
    ,SHA1(company_name||'|'||industry) AS company_id
   from {{ref('stg_raw')}})

select * from pe_hash_dataset