USE MYNTRA;

# Showing the Dataset
SELECT * FROM DATA;

-- 1. Finding the names of unique brands
SELECT DISTINCT BRAND_NAME FROM DATA;

-- 2. Finding the number of unique brands
SELECT COUNT(DISTINCT BRAND_NAME) FROM DATA;

-- 3. Finding the number of products in each brands
SELECT BRAND_TAG, COUNT(PRODUCT_TAG) FROM DATA group by BRAND_TAG;
 
-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
SELECT BRAND_TAG, COUNT(PRODUCT_TAG) FROM DATA group by BRAND_TAG
order by COUNT(PRODUCT_TAG) desc limit 5;

-- 5. Finding the top 5 brand who sold the most number of products
SELECT BRAND_TAG, sum(RATING_COUNT) AS 'PRODUCT_SOLD' FROM DATA 
group by BRAND_TAG
order by PRODUCT_SOLD desc limit 5;

-- 6. Finding the top 5 most expensive brands
select * from data order by marked_price desc limit 5;

-- 7. Finding the top 5 least expensive brands
select * from data order by marked_price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 
SELECT PRODUCT_TAG, sum(RATING_COUNT) AS 'PRODUCT_SOLD' FROM DATA 
group by PRODUCT_TAG
order by PRODUCT_SOLD desc limit 10;

-- 9. Finding the top 10 brands who gives maximum discount
SELECT BRAND_TAG, ROUND(AVG(DISCOUNT_PERCENT)) AS 'AVG_DISCOUNT' FROM DATA
GROUP BY BRAND_TAG
ORDER BY AVG_DISCOUNT DESC LIMIT 10;

-- 10. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price) as 'avg_price' from data 
group by product_tag
order by avg_price desc limit 10;