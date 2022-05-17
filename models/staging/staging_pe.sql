--With table_1 as (
--Select 
--date
--,date_id
--From {{ref('date_dim')}}
--),
--pe_hash_dataset as (
--    select * from {{ref('pe_hash_dataset')}}
--)
--Select
--pe_hash_dataset 
--,table_1
--From pe_hash_dataset Inner join table_1 on pe_hash_dataset.date = table_1.date

select *
from {{ref('pe_hash_dataset')}} as pe
inner join {{ref('date_dim')}} as dt
on pe.date = dt.date 