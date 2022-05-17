with fact as (
    select
        country_id
        ,company_id
        ,investor_id
        ,date_id
        ,round
        ,amount_raised
        ,currency
    from {{ref('wrk_join_pe')}}
)

select * from fact