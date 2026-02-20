# Write your MySQL query statement below
with new_table as(select d.name as Department,e.name as Employee, e.salary as Salary, dense_rank() over(partition by d.name order by e.salary desc) as  positions FROM Employee e
    LEFT JOIN Department d
    ON e.departmentId = d.id)  select Department ,Employee,Salary from new_table where positions <=3 ;