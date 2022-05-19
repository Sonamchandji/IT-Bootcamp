with investor as (
    select distinct
        investor_name
        ,investor_types
        ,investor_id
    from {{ref('wrk_hash_pe')}})

select * from investor