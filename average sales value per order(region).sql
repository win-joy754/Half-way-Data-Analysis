select `Region`,
round(sum(`Sales`)/count(distinct `Order ID`),2)
as average_sales_per_order
from sales
group by Region
order by average_sales_per_order desc;