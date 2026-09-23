select `Product Name`,`Region`,total_sales,ranking
from(
select `Product Name`,`Region`,
round(sum(Sales),2)as total_sales,
Rank()over(
partition by `region`
order by sum(Sales)DESC
)as ranking
from sales
group by `Region`,`Product Name`
)as ranked_products
where ranking=1
order by Region,total_sales desc;