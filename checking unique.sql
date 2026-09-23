select 
count(*) as total_rows,
count( distinct `Customer ID`) as unique_customers
from customers;
select 
count(*) as total_rows,
count( distinct `Order ID`) as unique_orders
from orders;
select 
count(*) as total_rows,
count( distinct `Product ID`) as unique_products
from products;
