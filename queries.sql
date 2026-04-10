SELECT * FROM train LIMIT 10;
SELECT SUM(Sales) AS Total_Sales FROM train;
select count(distinct `Order_ID`) AS Total_Orders FROM train;
select Region, sum(Sales) as Total_Sales from train
Group by Region
Order by Total_Sales DESC;
select `Product Name`, sum(Sales) as Total_Sales from train
group by `Product Name`
order by Total_Sales DESC
limit 5;
select `Customer Name`, sum(Sales) as Total_Sales from train
group by `Customer Name`
order by Total_Sales desc
Limit 5;
select `Product Name`, sum(Sales) as Total_Sales from train
group by `Product Name`
order by Total_Sales asc 
limit 5;
select
    avg(datediff(STR_TO_DATE(`Ship Date`, '%d/%m/%y'),str_to_date(`Order Date`, '%d/%m/%y'))) as Avg_Delivery_Days
from train;
