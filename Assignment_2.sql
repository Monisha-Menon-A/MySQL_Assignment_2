create database Sales;   -- create database
use Sales;

/* create table*/
create table Orders(order_id int auto_increment primary key,
customer_name varchar(50) not null,
product_category varchar(50) not null,
ordered_item varchar(50) not null,
contact_no varchar(50) unique);
desc Orders;

/* Add new column*/
alter table orders add order_quantity varchar(10);
select*from orders;

/*Rename the table*/
alter table orders rename to sales_orders;
select*from sales_orders;

/* enter rows to table*/
insert into sales_orders(customer_name, product_category, ordered_item,
contact_no, order_quantity) values ("Mithra", "Food", "Corn", 76761123, 1),
("Suma", "Food", "Rice", 76761423, 2),
("Fred", "Electronics", "Phone", 76561123, 1),
("Sasha", "Food", "Meat", 76901123, 1),
("Melwin", "Food", "Milk", 76121123, 5),
("Hyder", "Cosmetics", "Facewash", 76736123, 1),
("Ankit", "Food", "Fish", 76756123, 1),
("Roy", "Food", "Fruits", 78961123, 10),
("Amit", "Electronics", "Fan", 76745123, 1),
("Nithya", "Cosmetics", "Lipstick", 76221123, 4);
select*from sales_orders;

/*Display customer_name and ordered_item from the table*/
select customer_name, ordered_item
from sales_orders;

/*update product "food" into "cosmetics" and "meat" into "lipbalm" for order_id=14*/
update sales_orders set product_category="Cosmetics" where order_id=14;
update sales_orders set ordered_item="Lipbalm" where order_id=14;
select*from sales_orders;

/* delete sales_orders table from database*/
drop table sales_orders;
select*from sales_orders;