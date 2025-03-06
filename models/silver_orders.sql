select 
ID,
to_date(created_at) CREATED_AT,
USER_ID,
PRODUCT_ID,
QUANTITY,
UNIT_PRICE,
QUANTITY*UNIT_PRICE as order_amount
from {{ ref("bronze_orders") }}