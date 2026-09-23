select `Region`,
sum(`Sales`) as total_sales
from sales
group by Region
order by total_sales desc;