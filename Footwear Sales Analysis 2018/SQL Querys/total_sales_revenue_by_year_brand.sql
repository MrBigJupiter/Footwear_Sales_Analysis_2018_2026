-- Total Sales Volume and Revenue over 6 years period by Brand and Year--

SELECT 
	YEAR(order_date) AS Year,
	brand AS Brand,
	SUM(revenue_usd) as Total_Revenue,
	SUM(units_sold) as Total_Sales_Volume
FROM 
	global_sales_data
GROUP BY
	brand,
	YEAR(order_date)
ORDER BY 
	YEAR(order_date) DESC,
	SUM(revenue_usd) DESC;