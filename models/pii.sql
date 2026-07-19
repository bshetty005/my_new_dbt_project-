{{config(
            materialized = 'table'
)}}

select * from {{source("prod","pii_row")}}