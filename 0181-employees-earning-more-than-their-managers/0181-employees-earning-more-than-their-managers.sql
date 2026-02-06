# Write your MySQL query statement below
select emp.name as Employee from Employee mgr inner join Employee emp
on mgr.id = emp.managerId
where emp.salary > mgr.salary