select
    ID,
    created_at,
    TITLE as product_name,
    CATEGORY,
    EAN,
    VENDOR,
    PRICE,
from
    {{ ref('bronze_products') }}