drop database myntra;

create database myntra ;

select * from myntra.products;

use myntra;

select product_name as "Products Name",
       brand_name as "Brand Name", 
       marked_price as "Marked Price",
       discounted_price as "Discounted Price",
       marked_price - discounted_price as "Discounted Amount",
	round(((marked_price - discounted_price)/marked_price)*100,2) as 'discounted_persentage'
       from products;
       
       -- finding count & distinct function
       
       select count(*) from products;
       select distinct brand_name from products;
       -- finding count & distinct function
       
       select count(distinct brand_name) from products;
       select count(distinct product_name) from products;
       
       select count(distinct brand_name) as "unique brand name", count(distinct product_name) as "unique product name" from products;
       
        select count(distinct brand_name) from products;
       select count(distinct product_link) from products;
       
       -- Where clause
       select * from products where brand_name = 'biba';
	   select * from products where brand_name = 'adidas';
       select * from products where brand_name = 'h&m';
       select * from products;
       
       -- distinct with where clause 
       select distinct product_name from products where brand_name = 'H&M';
       
       select distinct (product_name) from products
       where brand_name = 'h&m'and discounted_price < 1000;
       
       select sum(rating_count)from products where brand_name = 'roadster';
       
       select sum(rating_count*discounted_price)*20 as 'revenue' from products where brand_name = 'roadster';,