select min(doctor), min(professor), min(singer), min(actor)
from
(select
row_number() over (partition by occupation order by name) row_n, 
case 
when occupation = 'doctor' then name
end as doctor,
case 
when occupation = 'professor' then name
end as professor,
case 
when occupation = 'singer' then name
end as singer,
case 
when occupation = 'actor' then name
end as actor
from occupations
order by name) mytable
group by row_n
order by row_n
