{{
    config(
        schema='gold'
    )
}}

select
    to_date(r.CREATED_AT) as review_date,
    r.PRODUCT_ID,
    p.product_name,
    avg(r.RATING) avg_rating
from
    {{ ref("bronze_reviews") }} r 
    left join {{ ref("silver_products" )}} p
    on r.product_id=p.id
    group by all