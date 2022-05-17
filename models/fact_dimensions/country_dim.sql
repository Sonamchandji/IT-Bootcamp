with country as (
    select
        country
        ,state
        ,city
        ,continent
        ,country_id
    from {{ref('wrk_join_pe')}})

select * from country