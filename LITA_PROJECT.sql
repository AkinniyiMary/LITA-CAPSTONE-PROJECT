create database LITA_PROJECT
select * from Sales_data

------total sale for each product category------

select [product],SUM (total_sales) as totalsales_product from Sales_data 
group by [product]

select SUM (Total_sales) as Shirt_totalsale from Sales_data
where [Product] ='shirt'

select SUM (Total_sales) as Shoes_totalsale from Sales_data
where [Product]='Shoes'

select SUM (Total_sales) as Hat_totalsale  from Sales_data
where [Product]='Hat'

select SUM (Total_sales) as Socks_totalsale from Sales_data
where [Product]='Socks'

select SUM (Total_sales) as Jacket_totalsale from Sales_data
where [Product]='jacket'

select SUM (Total_sales) as Gloves_totalsale from Sales_data
where [Product]='Gloves'


------No of sales transaction in each region------

select * from Sales_data

select region, COUNT (Total_sales) as Sales_in_region from Sales_data
group by Region 

select COUNT (Total_sales) as Sales_in_North from Sales_data
where Region='North'

select COUNT (Total_sales) as Sales_in_South from Sales_data
where Region='South'

select COUNT (Total_sales) as Sales_in_East from Sales_data
where Region='East'

select COUNT (Total_sales) as Sales_in_West from Sales_data
where Region='West'


--------highest selling product by total sales value----
select *  from sales_data

select MAX(Total_Sales) as Top_selling,[product] from Sales_data
group by [Product]
order by Top_selling desc

---------Total revenue per product(North revenue)------
select * from Sales_data

select sum (Total_sales) as North_revenue_shoes from Sales_data
where [Product]='shoes'
group by Region
having Region ='North'

select sum (Total_sales) as North_revenue_shirts from Sales_data
where [Product]='shirt'
group by Region
having Region ='North'

select sum (Total_sales) as North_revenue_gloves from Sales_data
where [Product]='Gloves'
group by Region
having Region ='North'

select sum (Total_sales) as North_revenue_socks from Sales_data
where [Product]='socks'
group by Region
having Region ='North'

select sum (Total_sales) as North_revenue_hat from Sales_data
where [Product]='hat'
group by Region
having Region ='North'

select sum (Total_sales) as North_revenue_jackects from Sales_data
where [Product]='jackets'
group by Region
having Region ='North'

----South Total revenue on product----


select sum (Total_sales) as South_revenue_shoes from Sales_data
where [Product]='shoes'
group by Region
having Region ='South'

select sum (Total_sales) as South_revenue_shirts from Sales_data
where [Product]='shirt'
group by Region
having Region ='South'

select sum (Total_sales) as south_revenue_gloves from Sales_data
where [Product]='Gloves'
group by Region
having Region ='South'

select sum (Total_sales) as south_revenue_socks from Sales_data
where [Product]='socks'
group by Region
having Region ='South'

select sum (Total_sales) as south_revenue_hat from Sales_data
where [Product]='hat'
group by Region
having Region ='South'

select sum (Total_sales) as south_revenue_jackects from Sales_data
where [Product]='jackets'
group by Region
having Region ='South'


--------East total revenue on product--------

select sum (Total_sales) as East_revenue_shoes from Sales_data
where [Product]='shoes'
group by Region
having Region ='East'

select sum (Total_sales) as East_revenue_shirts from Sales_data
where [Product]='shirt'
group by Region
having Region ='East'

select sum (Total_sales) as East_revenue_gloves from Sales_data
where [Product]='Gloves'
group by Region
having Region ='East'

select sum (Total_sales) as East_revenue_socks from Sales_data
where [Product]='socks'
group by Region
having Region ='East'

select sum (Total_sales) as East_revenue_hat from Sales_data
where [Product]='hat'
group by Region
having Region ='East'

select sum (Total_sales) as East_revenue_jackects from Sales_data
where [Product]='jackets'
group by Region
having Region ='East'

------West total revenue on product------


select sum (Total_sales) as West_revenue_shoes from Sales_data
where [Product]='shoes'
group by Region
having Region ='West'

select sum (Total_sales) as West_revenue_shirts from Sales_data
where [Product]='shirt'
group by Region
having Region ='West'

select sum (Total_sales) as West_revenue_gloves from Sales_data
where [Product]='Gloves'
group by Region
having Region ='West'

select sum (Total_sales) as West_revenue_socks from Sales_data
where [Product]='socks'
group by Region
having Region ='West'

select sum (Total_sales) as West_revenue_hat from Sales_data
where [Product]='hat'
group by Region
having Region ='West'

select sum (Total_sales) as West_revenue_jackects from Sales_data
where [Product]='jackets'
group by Region
having Region ='west'


--------monthly sales for the current year-------
select * from Sales_data

select sum (Total_sales) as Januarysales24 from Sales_data
where OrderDate between '2024-01-01' and '2024-01-31'

select SUM (Total_Sales) as Januarysales24 from Sales_data
group by OrderDate
having OrderDate between '2024-01-01' and '2024-01-31'

select SUM (Total_Sales) as Feburarysales24 from Sales_data
group by OrderDate
having OrderDate between '2024-02-01' and '2024-02-29'

select SUM (Total_Sales) as Marchsales24 from Sales_data
group by OrderDate
having OrderDate between '2024-03-01' and '2024-03-31'


select SUM (Total_Sales) as Aprilsales24 from Sales_data
group by OrderDate
having OrderDate between '2024-04-01' and '2024-04-30'

select SUM (Total_Sales) as Maysales24 from Sales_data
group by OrderDate
having OrderDate between '2024-05-01' and '2024-05-31'

select SUM (Total_Sales) as Junesales24 from Sales_data
group by OrderDate
having OrderDate between '2024-06-01' and '2024-06-30'


select SUM (Total_Sales) as Julysales24 from Sales_data
group by OrderDate
having OrderDate between '2024-07-01' and '2024-07-31'


select SUM (Total_Sales) as Augustsales24 from Sales_data
group by OrderDate
having OrderDate between '2024-08-01' and '2024-08-31'

select SUM (Total_Sales) as Septembersales24 from Sales_data
group by OrderDate
having OrderDate between '2024-09-01' and '2024-09-30'

select SUM (Total_Sales) as Octobersales24 from Sales_data
group by OrderDate
having OrderDate between '2024-10-01' and '2024-10-31'


select SUM (Total_Sales) as Novembersales24 from Sales_data
group by OrderDate
having OrderDate between '2024-11-01' and '2024-11-30'


select SUM (Total_Sales) as Decembersales24 from Sales_data
group by OrderDate
having OrderDate between '2024-12-01' and '2024-12-31'

-------top 5 selling customer by total purchase amount-----
select * from Sales_data 

select top 5 (quantity) as Bestseller,Customer_Id from Sales_data

-------percentage of total sales contributed by each region-------
select * from Sales_data 
select SUM (total_sales) from Sales_data 

select region,
       SUM (total_sales) as region_sales,
	   (SUM(total_sales)/(select SUM (total_sales) * 1.0 from Sales_data )) * 100 as sales_percentage from Sales_data 
	   group by Region 
	   order by sales_percentage 


----------Products with no sales in the last quater-----------
select * from Sales_data 

select [PRODUCT] as last_quartersales from Sales_data 
group by [Product]
having SUM(
          case
		  when OrderDate between '2024-06-01' and '2024-08-31' then 1
		  else 0
		  end)= 0





-----------------CUSTOMER DATA-------------------

-----------Total no of customers in eash region---------

select * from customer_data

select region, sum (customerid) as total_customer_region from customer_data
group by region

-----------most popular subscription type by no of customers------------

select * from customer_data

select subscriptionType, SUM (customerid) as popular_subscription from Customer_data
group by subscriptiontype


----------customers who cancelled subscription within 6 months--------------

select * from Customer_data 

select distinct (customerid) as cancelled from Customer_data 
where DATEDIFF(month, SubscriptionEnd,SubscriptionStart ) <=6;


----------------Average subscripion duration for all customers------------

select * from Customer_data 

select AVG(datediff(day,subscriptionStart,subscriptionEnd)) as avg_subscription_duration from Customer_data 


---------customers with subscription longer than 12 months--------
select * from Customer_data 

select distinct (customerid) as twelve_months_renewal from Customer_data 
where datediff (MONTH,SubscriptionStart ,SubscriptionEnd) >=12


------------------total revenue by subscription type--------

select * from Customer_data 

select SubscriptionType, SUM(revenue) as Total_revenue from Customer_data 
group by SubscriptionType

----------top 3 region of subscription cancellation----------
select * from Customer_data 

select top 3 (Region) as top_cancellation from Customer_data
where Subscription_trend ='cancelled'

------------total no of active and cancelled subscription-----------
select * from Customer_data 

select SUM (CustomerID ) as active_user from Customer_data 
group by Subscription_trend
having Subscription_trend='Renewed' 

select SUM (CustomerID ) as dormant_user from Customer_data 
group by Subscription_trend
having Subscription_trend='Cancelled' 




