# Write your MySQL query statement below
# 어떤 두 변의 길이의 합도 나머지 한 변보다 커야 한다.
select
    x
    , y
    , z
    , case
        when x > 0 and y > 0 and z > 0 
            and x + y > z
            and x + z > y
            and y + z > x then 'Yes'
        else 'No'
      end as triangle
from Triangle
