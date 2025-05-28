use swiggy;
select * from restaurants;

-- 1. rank every restaurants from most expensive to least expensive
select *, rank() over(order by cost desc) as 'rank' from restaurants;

-- 2. Rank every restaurants from most visited to least visited
select *, rank() over(order by rating_count desc) as 'rank' from restaurants;

-- 3. rank every restaurants from most expensive to least expensive as per their city
select *, rank() over(partition by city order by cost desc) as 'rank' from restaurants;

-- 4. dense-rank every restaurants from most expensive to least expensive as per their city
select *,
rank() over(order by cost desc) as 'rank',
Dense_rank() over(order by cost desc) as 'dense_rank' from restaurants;

-- 5. Row number every restaurants from most expensive to least expensive as per their city
select *, 
rank() over(order by cost desc) as 'rank',
Dense_rank() over(order by cost desc) as 'dense_rank',
row_number() over(order by cost desc) as 'row_number'
 from restaurants;

-- 6. rank every restaurants from most expensive to least expensive as per their city along with its city [Adilabad - 1, Adilabad - 2]
select *, concat(city,' _ ', row_number() over(partition by city order by cost desc)) as 'rank' from restaurants;

-- 7. find top 5 restaurats of every city as per their revenue
select * from (select *,
  cost*rating_count as 'revenue',
  row_number() over(partition by city order by rating_count*cost desc) as 'rank' from restaurants) t
  where t.rank < 6;
  
-- 8. find top 5 restaurats of every cuisine as per their revenue
select * from (select *,
  cost*rating_count as 'revenue',
  row_number() over(partition by cuisine order by rating_count*cost desc) as 'rank' from restaurants) t
  where t.rank < 6;
