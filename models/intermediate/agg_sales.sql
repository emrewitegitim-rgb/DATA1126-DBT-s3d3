SELECT
 date_date
 , order_id
 , sum(revenue) as total_revenue
 , sum(quantity) as total_quantity
 , count(*) as nb_products
FROM {{ ref("stg_greenweez__sales") }}
GROUP BY date_date, order_id