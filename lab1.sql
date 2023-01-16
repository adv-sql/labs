--Query 1
select 
  `term`,
  `week`,
  `rank`
from `bigquery-public-data.google_trends.top_terms`
limit 1000;

--Query 2
select 
  `term`, 
  `week`,
  `rank`
from `bigquery-public-data.google_trends.top_terms`
where `week` >= '2022-11-01' and `rank` <= 10;

--Query 3
select 
  `term`, 
  count(1) as n
from `bigquery-public-data.google_trends.top_terms`
where `week` >= '2022-11-01' and `rank` <= 10
group by 
  1;