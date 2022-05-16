with investor as (
    select
        investor_name
        ,investor_types
        ,SHA1(investor_name||'|'||investor_types) AS investor_id
    from {{ref('pe_dataset')}})

select * from investor