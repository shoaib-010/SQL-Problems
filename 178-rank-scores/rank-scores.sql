# Write your MySQL query statement below
SELECT SCORE, DENSE_RANK() OVER (order by score desc) as 'rank' from scores;