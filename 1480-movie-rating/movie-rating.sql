# Write your MySQL query statement below
(select name as results from users join movierating using(user_id) group by user_id order by count(*) desc,name  limit 1)
union all
(select title from movies join movierating using(movie_id) WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29' group by title order by avg(rating) desc,title asc limit 1)