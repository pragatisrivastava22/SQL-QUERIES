select * from myntra.data;
use myntra;
-- 1. how many brands are associated with us ?
select count(distinct brand_name) from data;

-- 2. how many tsgirt do we have in the database ?
select count(*) from data
where product_tag = 'tshirts';

-- 3. how many tshirts do we have in the database under 2000? (14197)
select count(distinct product_link) from data
       where product_tag = 'tshirts' and discounted_price < 2000;
       
       
-- 4. how many brands are selling tshirts? (475)
select count(distinct brand_name) from data
where product_tag = 'tshirts';

-- 5. how many different product categories H&M selling? (74)
select count(distinct product_tag) from data
       where brand_name = 'h&m';
       
-- 6. list top 5 tshirts of nike ?(575,575,462,432,110)
select * from data 
where product_tag = 'tshirts' and brand_name = 'nike'
order by rating_count desc
limit 5;

-- 7. list top 5 worse rated products from guess?
select * from data 
where brand_name = 'guess' and rating_count > 0
order by rating_count asc
limit 5;

-- 8. find total product sold by levis?(56117)
select sum(rating_count) from data
where brand_name = 'levis';

-- 9. how many tshirts are sold in total?(2063921)
select sum(rating_count) from data
where product_tag = 'tshirts';

-- 10. which category among tshirts & shirt has generated more revenue?(1104713599,858099971
select sum(rating_count*discounted_price) from data
where product_tag = 'tshirts';
select sum(rating_count*discounted_price) from data
where product_tag = 'shirts';

-- 11. list top 5 best selling brands?
select brand_name, sum(rating_count) as 'product_sold' from data
 group by brand_name
   order by product_sold desc
   limit 5;
   
-- 12. list top 5 best-selling product categories
 select product_tag, sum(rating_count) as 'product_sold' from data
 group by product_tag
   order by product_sold desc
   limit 5;
   
-- 13. which brand has generated max revenue?
 select brand_name, sum(rating_count*discounted_price) as 'revenue' from data
 group by brand_name
   order by revenue desc
   limit 5;
 
-- 14. which brand has generated max revenue?
 select product_tag, sum(rating_count*discounted_price) as 'revenue' from data
 group by product_tag
   order by revenue desc
   limit 5;

-- 15. which category among tshirts & shirt has generated more revenue?
select product_tag, sum(rating_count*discounted_price) as 'revenue'
 from data where product_tag in ('tshirts', 'shirts')
group by product_tag
order by revenue desc; 