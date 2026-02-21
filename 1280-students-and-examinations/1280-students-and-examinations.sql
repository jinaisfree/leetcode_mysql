# Write your MySQL query statement below
with crossjoin as (
    select
        s.student_id
        , s.student_name
        , s2.subject_name
    from Students s
    cross join Subjects s2
)
select
    c.student_id
    , c.student_name
    , c.subject_name
    , count(e.student_id) as attended_exams
from crossjoin c
left join Examinations e
on c.student_id = e.student_id and c.subject_name = e.subject_name
group by c.student_id , c.student_name, c.subject_name
order by c.student_id, c.subject_name