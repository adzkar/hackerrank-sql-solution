set @rownum := -1;

select
   round(AVG(LAT_N),4)
from
(
   select
      @rownum := @rownum + 1 as rownum,
      lat_n
   from
      station
   order by lat_n
) AS t
where
   t.rownum in (
      CEIL(@rownum/2),
      FLOOR(@rownum/2)
   )
;
