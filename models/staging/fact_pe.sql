with date_col as (

    select 
        date_id,
        date
    from {{ ref('date_dim') }}

),

country_col as (

    select 
        country_id
    from {{ ref('country_dim') }}

),

pe_rest as (

    select 
        round,
        amount_raised,
        currency,
        date
    from {{ ref('pe_dataset') }}

),
company_col as (

    select
        company_id

    from {{ref('company_dim')}}

),

investor_col as (

    select
        investor_id

    from {{ref('investor_dim')}}

),

final as (

    select
        country_col.country_id,
        date_col.date_id
        company_col.company_id,
        investor_col.investor_id,
        pe_rest.round,
        pe_rest.amount_raised,
        pe_rest.currency,
        coalesce(pe_rest.amount_raised, 0) as total_amount_raised

    from date_col

    left join date using (date_id)

)

select * from final