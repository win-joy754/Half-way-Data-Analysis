select `Region`,
round(sum(`Sales`),2) as total_sales,
round(sum(`Profit`),2) as total_profit,
round(sum(`Profit`)/sum(`Sales`),2) as profit_margin
from sales
group by Region
order by profit_margin desc