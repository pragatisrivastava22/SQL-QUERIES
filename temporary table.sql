use swiggy;
select * from restaurants;

-- drop temporary table if they exist
drop table if exists temp_resataurants; 

-- create your first temporary table
create temporary table temp_resataurants as select *from restaurants where city = 'sirsa';
select * from temp_resataurants;

-- create a new temporary table named 'sirssa restaurants' containing restaurants of sirsa only
create temporary table if not exists temp_restaurants_sirsa as select * from restaurants where city = 'sirsa'; 
select * from temp_restaurants_sirsa;

-- create a new temporary table name ' city_statistics' containing aggregated statistics for each city
create temporary table if not exists temp_city_statistics as
select city, avg(rating) as avg_rating, count(*) as num_of_restaurants from restaurants group by city;
 select * from temp_city_statistics;

-- create a new temperory table name 'expensive_restaurants' containing restaurants with a cost greater than 500
create table if not exists temp_expensive_restaurants  as select * from restaurants where cost > 500; 
select * from temp_expensive_restaurants;