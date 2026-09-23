select `Product Name`,
round(sum(sales),2)as total_sales
from sales
group by `Product Name`
order by total_sales desc;