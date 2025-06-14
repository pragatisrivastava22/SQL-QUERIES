use myntra;

# Showing the Dataset
select * from data;

# 1. Finding the most expensive product on myntra
select * from data order by marked_price desc limit 1;

# 2. Finding the least expensive product on myntra
select * from data order by marked_price asc limit 1;

# 3. Finding the top 5 most expensive product on myntra
select * from data order by marked_price desc limit 5;

# 4. Top 5 products based on best rating | rating*rating count
select * from data order by RATING*RATING_COUNT desc limit 5;

# 5. Finding the second most expensive product
select * from data order by marked_price desc limit 1 offset 1;

# 6. Finding the second least expensive product
select * from data order by marked_price asc limit 1 offset 1;

# 7. Finding the 10th most expensive product
select * from data order by marked_price desc limit 1 offset 9;

# 8. Finding the worst rated product by nike
select * from data
 where brand_name - 'nike' and rating_count > 5
 order by rating*rating_count asc limit 1;

# 9. Finding the worst rated product by nike & rating is not zero
select * from data
 where brand_name - 'nike' and rating != 0
 order by rating*rating_count asc limit 1;

# 10. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select * from data
where (brand_name = 'nike' or brand_name = 'adidas') and product_tag ='tshirts'
order by rating*rating_count desc limit 10;

# 11. Worst rated 10 products based on the rating of 100 people atleast
select * from data
where rating_count > 100
 order by rating*rating_count asc;
 
# 12. 10 worst rated tshirt based on the rating of 100 people atleast
select * from data
where product_tag = 'tshirts' and rating_count > 100
order by rating*rating_count asc limit 10;

# 13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select * from data
order by product_name asc limit 10;

# 14. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select * from data
where (brand_name = 'nike' or brand_name = 'adidas') and product_tag ='tshirts'
order by rating*rating_count desc limit 10;

# 15. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
select * from data
where (brand_name = 'nike' or brand_name = 'adidas') and product_tag ='tshirts' and discounted_price between 1000 and 1200
order by brand_name asc, discounted_price asc;
	