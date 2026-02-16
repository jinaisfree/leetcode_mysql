# Write your MySQL query statement below
-- SELECT p.product_id, p.product_name
-- FROM Product p
-- WHERE EXISTS (
--     SELECT 1
--     FROM Sales s
--     WHERE s.product_id = p.product_id
--       AND s.sale_date >= '2019-01-01'
--       AND s.sale_date <  '2019-04-01'
-- )
-- AND NOT EXISTS (
--     SELECT 1
--     FROM Sales s
--     WHERE s.product_id = p.product_id
--       AND (s.sale_date < '2019-01-01' OR s.sale_date >= '2019-04-01')
-- );

SELECT
    s.product_id
    , p.product_name
FROM Sales s
left join Product p
on s.product_id = p.product_id
GROUP BY product_id
HAVING 
    MIN(sale_date) >= '2019-01-01'
    AND MAX(sale_date) <= '2019-03-31';