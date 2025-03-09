{{ config(materialized='table') }}

select *
from
{{ref('samp') }} as orders
join 
{{ref('tpc_lineage') }} as tpc_lineage
on orders.orderkey=tpc_lineage.L_ORDERKEY