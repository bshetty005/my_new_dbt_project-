select {{add(1,2)}}


select {{multiply(10,20)}}


{% if 1 == 1 %}
    {{ "this is correct" }}
{% else %}
    {{ "this is not correct" }}
{% endif %}


{%if 1==1 %}
{{"then it is correct"}}
{%else%}
{{"this is not correct"}}
{%endif%}


select * from {{source('src','orders')}}


{{dbt_utils.get_column_values(source("src","orders"),"product")}}




