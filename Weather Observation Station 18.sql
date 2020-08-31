select round(abs(min_n - max_n)+abs(min_w - max_w),4) -- manhattan distance |x1 - x2| + |y1 - y2|
from (select min(lat_n) as min_n, max(lat_n) as max_n, min(long_w) as min_w, max(long_w) as max_w
from station) mytable
