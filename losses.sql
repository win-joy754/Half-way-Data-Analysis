select `Product Name`,
round(sum(`Profit`),2)as total_profit
from sales
where `Profit`<0
group by `Region`
order by total_profit asc;