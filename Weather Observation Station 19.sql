select round(sqrt(pow((max_lat - min_lat),2) + pow((max_long - min_long),2)),4)
from (select min(lat_n) as min_lat, max(lat_n) as max_lat, min(long_w) as min_long, max(long_w) as max_long
from station) mytable
