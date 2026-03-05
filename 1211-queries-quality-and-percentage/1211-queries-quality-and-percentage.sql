# Write your MySQL query statement below
select
    query_name
    , round(avg(rating/position),2) as quality 
    , round(sum(case when rating < 3 then 1 else 0 end) / count(*) * 100, 2) as poor_query_percentage
from Queries
group by query_name

-- with poor_queries as (
--     select
--         query_name
--         , count(*) as poor_query_count
--     from Queries
--     where rating < 3
--     group by query_name
-- )
-- select
--     q.query_name
--     , round(avg(rating/position),2) as quality 
--     , ifnull(round(poor_query_count / count(*) * 100,2), 0) as poor_query_percentage
-- from Queries q
-- left join poor_queries p
-- on q.query_name = p.query_name
-- group by query_name