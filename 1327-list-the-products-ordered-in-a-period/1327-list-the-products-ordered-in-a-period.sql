# Write your MySQL query statement below
select
    product_name
    , sum(unit) as unit
from Orders o
left join Products p
on o.product_id = p.product_id
where o.order_date like '2020-02%'
group by o.product_id, product_name
having sum(unit) >= 100