with investor as (
    select
        {{ dbt_utils.surrogate_key(['investor_name', 'investor_types', 'date']) }} as investor_id,
        investor_name,
        investor_types
    from {{ref('pe_dataset')}})

select * from investor