# Write your MySQL query statement below
-- select
--     p.product_id
--     , p.product_name
-- from Product p
-- where not exists (
--     select
--         1
--     from Sales s
--     where s.product_id = p.product_id
--     and sale_date not between '2019-01-01' and '2019-03-31'
-- )

SELECT
    s.product_id
    , p.product_name
FROM Sales s
left join Product p
on s.product_id = p.product_id
GROUP BY product_id
HAVING 
    MIN(sale_date) >= '2019-01-01'
    AND MAX(sale_date) < '2019-03-31';