
Create or replace view product_perf as
    SELECT p.product_id, p.productname, p.productcategory , p.price, sum(o.quantity) as total_prod_sold, count(o.order_id)  as total_prod_orders, count(distinct c.state) as total_no_states

FROM "INTRO_TO_ANALYTICS_ENG"."PUBLIC"."PRODUCT" p
JOIN "INTRO_TO_ANALYTICS_ENG"."PUBLIC"."ORDERS" o
    on p.product_id=o.productid
JOIN "INTRO_TO_ANALYTICS_ENG"."PUBLIC"."CUSTOMERS" c
    on c.cust_id=o.cust_id
group by p.product_id, p.productname, p.productcategory, p.price

select * from product_perf
