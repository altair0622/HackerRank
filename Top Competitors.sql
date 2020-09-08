select s.hacker_id, h.name
from submissions as s
inner join hackers as h on s.hacker_id = h.hacker_id
inner join challenges as c on s.challenge_id = c.challenge_id
inner join difficulty as d on c.difficulty_level = d.difficulty_level
where s.score = d.score

group by s.hacker_id, h.name
having count(s.challenge_id) > 1
order by count(s.challenge_id) desc, s.hacker_id
