select * from {{source("my_source","REGION")}}

{{ config(materialized='ephemeral') }}