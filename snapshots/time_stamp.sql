{%snapshot customer_snapshot%}
{{
        config(
                unique_key = "cust_id",
                startegy = "timestamp",
                updated_at = "updated_at"
        )
}}


select * from {{sorce("src","cust")}}

{%endsnapshot%}

