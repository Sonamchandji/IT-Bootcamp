with country as (
    select
        country,
        state,
        city,
        continent
    from {{ref('pe_dataset')}})

select * from country