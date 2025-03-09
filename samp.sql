{{ config(materialized='table') }}

select 
o_comment as comments,
o_orderkey as orderkey,
o_orderdate as orderdate,
o_totalprice as total_price
from 
{{ref('tpch_orders') }} as orders