select mytable.name
from (select students.name,packages.salary, friends.friend_id
FROM students
inner join packages on students.id = packages.id
inner join friends on students.id = friends.id) mytable
inner join packages on mytable.friend_id = packages.id
where mytable.salary < packages.salary
order by packages.salary
