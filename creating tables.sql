create table orders as
select
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Ship Mode`,
    `Customer ID`,
    `Product ID`
from sales;
create table customers as
select
    `Customer ID`,
   `Customer Name`,
    `Segment`,
    `City`, 
   `State`,
    `Postal Code`, 
    `Region`,
    `Product ID`,
    `Order ID`
from sales;
create table products as
select
    `Product ID`,
   `Category`,
    `Sub-Category`, 
    `Product Name`,
   `Sales`,
   `Quantity`,
    `Discount`,
    `Profit`,
    `Customer ID`,
    `Order ID`
from sales;