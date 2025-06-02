use swiggy;

-- Select all columns from the 'restaurants' table with alias 'r'
select * from restaurants;

-- create a new table names 'sirsa_restaurants' containing restaurants of sirsa only
create table if not exists sirsa_resaturants as select * from restaurants where city = 'sirsa'; 
select * from sirsa_resaturants;

-- create a new table name ' city_statistics' containing aggregated statistics for each city
create table if not exists city_statistics as 
select city, avg(rating) as avg_rating, count(*) as num_of_restaurants from restaurants group by city; 
select * from city_statistics;

-- create a new table name 'expensive_restaurants' containing restaurants with a cost greater than 500
create table if not exists expensive_restaurants  as select * from restaurants where cost > 500; 
select * from expensive_restaurants;