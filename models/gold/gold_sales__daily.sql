
select
    order_date,
    PRODUCT_NAME,
    CATEGORY,
    VENDOR,
    PRICE,
    STATE,
    SALES_CHANEL,
    sum(ORDER_AMOUNT) as total_revenue
from
    {{ ref("silver_orders") }} o
    left join {{ ref("silver_products") }} p on o.product_id = p.id
    left join {{ ref("silver_users") }} u on o.USER_ID = u.id
    group by all