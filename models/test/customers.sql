{{ config(schema='SNOWFLAKE_SAMPLE_DATA') }}

with customers as (
select
*
from {{ source('TPCH_SF1000', 'customer') }}
)
select
    *
    from customers