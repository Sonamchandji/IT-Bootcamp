with fact as (
    select
        country_id
        ,company_id
        ,investor_id
        ,date_id
        ,table_rnd
        --,amount_raised as amt_raised_1
        --,amount_raised::numeric(10,0) as amt_raised_2
        ,cast(amount_raised as integer) as amount_raised
        ,currency
    from {{ref('wrk_hash_pe')}}
)

select * from fact