# Write your MySQL query statement below
-- select
--     distinct v1.author_id as id
-- from Views v1
-- join Views v2
-- on v1.author_id = v2.viewer_id
-- and v1.article_id = v2.article_id
-- -- where exists (
-- --     select
-- --         1
-- --     from Views v2
-- --     where v1.author_id = v2.viewer_id
-- --     and v1.article_id = v2.article_id
-- -- )
-- order by id

select
    distinct author_id as id
from Views
where author_id = viewer_id
order by id