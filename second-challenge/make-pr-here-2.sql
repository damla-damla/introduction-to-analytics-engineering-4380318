
Create view product_perf as
    SELECT p.product_id, p.productname, p.productcategory , p.price, sum(o.quantity) as total_prod_sold, count(o.order_id) as total_prod_orders

FROM "INTRO_TO_ANALYTICS_ENG"."PUBLIC"."PRODUCT" p
LEFT JOIN "INTRO_TO_ANALYTICS_ENG"."PUBLIC"."ORDERS" o
    on p.product_id=o.productid
group by p.product_id, p.productname, p.productcategory, p.price

select * from product_perf