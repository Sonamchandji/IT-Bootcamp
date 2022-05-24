select 

--timestamp as table_ts
    ,company_name
    ,growth_stage
    ,country
    ,state as state_col
    ,city
    ,continent
    ,industry
    ,sub_industry
    ,client__focus
    ,business_model
    ,company_status
    ,round as table_rnd
    ,amount_raised
    ,currency
    ,date as table_dt
    ,investor_types
    ,investor_name
    ,company_valuation_usd
    ,valuation_date

from `gcp-project-346311.private_equity.raw_test`