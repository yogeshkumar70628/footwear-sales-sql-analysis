create database shoes_db;
use shoes_db;

create table sales (
sale_ID varchar(100),
Date date,
Brand varchar(50),
shoe_type varchar(50),
color varchar(50),
country varchar(50),
Sales_Channel varchar(50),
Price_USD Decimal(10,2),
Units_Sold int,
Revenue_USD decimal(10,2)
);

select * from sales;
select count(*) from sales;
select count(*) from sales where Revenue_USD is NULL;

SELECT *
FROM sales
WHERE Revenue_USD != Price_USD * Units_sold;


-- the brand who is generates the most revenue
select 
      Brand,
	  sum(Revenue_USD) as Total_revenue
from sales
group by Brand
order by Total_revenue;

-- Country buys the most units 
select country ,
       sum(Units_Sold) as Total_units
from sales
group by country
order by Total_units DESC;

-- sales channel perform best
select 
Sales_Channel,
sum(Revenue_USD) as Revenue
from sales
group by Sales_Channel
order by Revenue DESC;

-- avg price per shoe type
select 
shoe_type,
round(avg(price_USD),2)as Avg_price
from sales
group by shoe_type
order by Avg_price desc;

-- Monthly Revenue Trend
select 
  date_format(Date,'%y-%m') as  Month,
  date_format(Date,'%b') as Month_name, 
  sum(Revenue_USD) as Revenue
from sales
group by date_format(Date,'%y-%m'), date_format(Date,'%b')
order by date_format(Date,'%y-%m');


    -- Top 3 Brands in each country by Revenue
SELECT *
FROM (
    SELECT
        country,
        Brand,
        SUM(Revenue_USD) AS Revenue,
        RANK() OVER (PARTITION BY country ORDER BY SUM(Revenue_USD) DESC) AS Rnk
    FROM sales
    GROUP BY country, Brand
) t
WHERE t.Rnk <= 3
ORDER BY country, Rnk;

-- High value transactions
select *
from sales
where Revenue_USD > (
select avg(Revenue_USD) from sales
);

-- Best-selling shoe type per channel..
select*
from (
select 
Sales_Channel,
shoe_type,
sum(Units_Sold) as Total_Units,
rank() over (partition by Sales_Channel order by sum(Units_Sold)Desc) as rnk
from sales
group by Sales_Channel,Shoe_type
)t where rnk = 1;

