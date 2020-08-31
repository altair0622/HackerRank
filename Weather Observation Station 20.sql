select round(S.lat_n,4) 
from station AS S 
where (select count(lat_n) from station where lat_n < S.lat_n ) = (select count(lat_n) from station where lat_n > S.lat_n
