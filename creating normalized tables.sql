create table products_norm as
select distinct
   `Product ID`,
   `Product Name`,
   `Category`,
   `Sub-Category`
   from products;
   create table customer_norm as
select distinct
   `Customer ID`,
   `Customer Name`,
   `Segment`
   from customers;
   create table order_norm as
select distinct
   `Order ID`,
   `Order Date`,
   `Customer ID`,
   `Product ID`
   `Sales`,
   `Quantity`,
   `Discount`,
   `profit`
   from sales;