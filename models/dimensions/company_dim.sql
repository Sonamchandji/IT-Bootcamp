with company as (
    select distinct
        company_name
        ,growth_stage
        ,industry
        ,sub_industry
        ,client__focus
        ,business_model
        ,company_status
        ,company_valuation
        ,valuation_date
        ,company_id
    from {{ref('wrk_hash_pe')}})

select * from company