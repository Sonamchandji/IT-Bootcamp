with country as (
    select
        country,
        state,
        city,
        continent
        ,SHA1(country||'|'||state) AS country_id
    from {{ref('pe_dataset')}})

select * from country