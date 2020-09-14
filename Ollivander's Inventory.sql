select B.id, A.age, A.min_co, A.power

from (select p.age, min(w.coins_needed) as min_co, w.power
from wands as w
inner join wands_property as p
on w.code = p.code
where p.is_evil = 0
group by p.age, w.power
) A

inner join (select w.id, p.age, w.coins_needed, w.power
from wands as w
inner join wands_property as p
on w.code = p.code) B

on A.age = B.age and A.min_co = B.coins_needed and A.power = B.power
order by A.power desc, A.age desc
