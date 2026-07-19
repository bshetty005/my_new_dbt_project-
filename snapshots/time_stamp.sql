{%snapshot customer_snapshot %}
{{
        config(
                unique_key = "cust_id",
                strategy = "timestamp",
                updated_at = "updated_at"
        )
}}


select * from {{source("src","cust")}}

{%endsnapshot%}

