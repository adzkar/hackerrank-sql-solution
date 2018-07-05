select distinct city from station
where city rlike '^[^AIUEO]' and city rlike '[^AIUEO]$';
