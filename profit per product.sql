select `Product Name`,
round(sum(profit),2)as total_profit
from sales
group by `Product Name`
order by total_profit desc