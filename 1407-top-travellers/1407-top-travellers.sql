# Write your MySQL query statement below
select u.name as name, sum(ifnull(distance,0)) as "travelled_distance"
from users u 
left join rides r
on u.id = r.user_id
group by r.user_id
order by travelled_distance DESC, u.name ASC
