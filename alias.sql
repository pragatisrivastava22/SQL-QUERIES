use swiggy;

-- Select all columns from the 'restaurants' table with alias 'r'
select * from restaurants as rest;

-- select the city and the average cost of restaurants in each city using table aliases and aggregate functions
select rest.city, avg(rest.cost) as 'avg_cost'
from restaurants as rest 
group by rest.city;

-- select restaurants that have a higher rating than the avg rating of all resataurants in the same city using self-referencing query with table aliases
select rest.*
from restaurants as rest 
where rest.rating > (select avg(rating) from restaurants where city = rest.city)
limit 10;