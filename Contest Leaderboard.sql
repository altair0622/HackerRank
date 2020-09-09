select h.hacker_id, name, sum(max_score)
from hackers as h
inner join (select hacker_id, 
           max(score) as max_score from submissions 
           group by hacker_id, challenge_id) mytable on h.hacker_id = mytable.hacker_id

group by h.hacker_id, name
having sum(max_score) > 0
order by sum(max_score) desc, h.hacker_id
