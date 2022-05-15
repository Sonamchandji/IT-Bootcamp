with investor as (
    select
        investor_name,
        investor_types
    from {{ref('pe_dataset')}})

select * from investor