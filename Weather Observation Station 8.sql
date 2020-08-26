select Distinct City 
from Station
where LEFT(City,1) in ('a','e','i','o','u') AND Right(city,1) in ('a','e','i','o','u')
