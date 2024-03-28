{{
    config(
        alias="orders"
    )
}}

SELECT
    id AS order_id,
    amount AS order_amount_in_dollars,
    created_at AS created_ts
FROM {{ source('fivetran_shopify', 'orders')}}
WHERE NOT _fivetran_deleted