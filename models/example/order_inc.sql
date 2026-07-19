{{config
        (materialized = 'incremental',
        unique_key = 'ORDER_ID',
        incremental_startegy = 'merge'        
        )}}


select order_id,
cust_name,product,
amount,
order_datetime,
'{{invocation_id}}' as dbt_invocation_id
from {{source("src","orders_inc")}}


{% if is_incremental() %}
where order_datetime > 
(
    select max(order_datetime) from {{this}}
)
{%endif%}





