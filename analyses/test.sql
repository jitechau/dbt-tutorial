{% set now=modules.datetime.datetime.now() %}
{{ now }}

{% set current_date=modules.datetime.date.today() %}
{{ current_date }}

{% set metadata=adapter.get_columns_in_relation(ref('bronze_orders')) %}
select
{%- for column in metadata %}
{{ column.name }}
{%- if not loop.last -%}
,
{%- endif -%}
{%- endfor %}
from {{ ref("bronze_orders") }}