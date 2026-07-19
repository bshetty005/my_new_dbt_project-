select * from {{ref('my_first_file')}}

{{config
        (materialized = 'table',
        transient  = false)}}