select
    ID,
    CREATED_AT,
    CITY,
    STATE,
    year(to_date(BIRTH_DATE)) as birth_year,
    SOURCE as sales_chanel
from
    {{ ref('bronze_users') }}