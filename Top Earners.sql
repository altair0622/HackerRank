select earnings, count(earnings)
from (select salary*months as earnings
from employee) mytable
group by earnings
order by earnings DESC
limit 1
