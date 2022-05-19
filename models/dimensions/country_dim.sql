with country as (
    select distinct
        country
        ,state
        ,city
        ,continent
        ,country_id
    from {{ref('wrk_hash_pe')}})

select * from country