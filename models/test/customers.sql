{{ config(schema='STAGING') }}

with customers as (
select
*
from {{ source('TPCH_SF1000', 'customer') }}
)
select
    *
    from customers