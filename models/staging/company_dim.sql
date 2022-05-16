with company as (
    select
        company_name,
        growth_stage,
        industry,
        sub_industry,
        client__focus,
        business_model,
        company_status,
        company_valuation_usd as company_valuation,
        valuation_date
        ,SHA1(company_name||'|'||industry) AS country_id
    from {{ref('pe_dataset')}})

select * from company