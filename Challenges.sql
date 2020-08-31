select hackers.hacker_id, hackers.name, count(challenges.hacker_id) as total_count
from challenges
inner join hackers on challenges.hacker_id = hackers.hacker_id
group by hackers.hacker_id, hackers.name

-- total_count in the highest count
having total_count = 
(
select count(challenge_id) as max_count
from challenges
group by hacker_id
order by max_count desc
limit 1
)

-- or total_count in not duplicated one
or total_count in
(
select distinct other_counts from 
(
select hackers.hacker_id, hackers.name, count(challenges.hacker_id) as other_counts
from challenges
inner join hackers on challenges.hacker_id = hackers.hacker_id
group by hackers.hacker_id, hackers.name
) mytable
group by other_counts
having count(other_counts) =1)


order by total_count DESC, hackers.hacker_id
