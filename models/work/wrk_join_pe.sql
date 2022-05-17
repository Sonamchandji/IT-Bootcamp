select * from {{ref('pe_hash_dataset')}} as pe
    inner join {{ref('stg_date')}} as dt
    on pe.date = dt.date 
