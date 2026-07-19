{% test cust_test(model,column_name)%}
select * from {{model}}
where {{column_name}} > 30
{%endtest%}