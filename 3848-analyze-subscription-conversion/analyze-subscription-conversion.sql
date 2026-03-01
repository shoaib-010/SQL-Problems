# Write your MySQL query statemen
select user_id,
round(avg(case when activity_type = 'free_trial' then activity_duration else null end),2) as trial_avg_duration,
round(avg(case when activity_type = 'paid' then activity_duration else null end),2) as paid_avg_duration from useractivity where user_id in(select user_id from useractivity group by user_id having count(distinct case when activity_type ='free_trial' then 1 end)>0 AND count(distinct case when activity_type ='paid' then 1 end)>0 )
group by user_id
order by user_id