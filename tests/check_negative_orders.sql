
{{
    config(
        severity='warn'
    )
}}
select * from {{ source("landing","orders") }}  
where quantity <0 or unit_price <0