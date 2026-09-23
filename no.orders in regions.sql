select `Region`,
count(distinct `Order ID`) as total_orders
from sales
group by `Region`
order by total_orders desc;