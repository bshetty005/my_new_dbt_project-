{{123}}

{%-set my_int = 1234 -%}
{{my_int}}


{%- set my_name = 'bharath'  -%}
{{my_name}}


--conditional logic inside the macro

{% if 1==0%}
{{"im inside the bracket"}}
{%else%}
{{"im outside of the bracket"}}
{%endif%}


{{invocation_id}}


--utils

{{dbt_utils.get_column_values(source("src","orders"),"product")}}

{{dbt_utils.get_column_values(source("src","orders"),"product")}}



select * from {{ref("third_model")}}



select * from {{source("my_source","CUSTOMER")}}

{{ dbt_utils.get_column_values(
    table=source('src', 'orders'),
    column='product'
) }}

{{ dbt_utils.get_column_values(source('my_source', 'CUSTOMER'), 'C_NAME') }}



{{ dbt_utils.get_column_values(source('src', 'orders'), 'product') }}







