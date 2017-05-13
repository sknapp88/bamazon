CREATE DATABASE bamazondb;

USE bamazondb;

CREATE TABLE products(
	item_id INTEGER auto_increment NOT NULL,
    product_name VARCHAR (100) NOT NULL,
    department_name varchar(100) NOT NULL,
    price INT NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_id)
    );

insert into products (product_name, department_name, price, stock_quantity)
values ('skateboard', 'sports', 30, 10);

insert into products (product_name, department_name, price, stock_quantity)
values ('helmet', 'sports', 25, 40 );

insert into products (product_name, department_name, price, stock_quantity)
values ('baby diapers', 'children', 20, 50);

insert into products (product_name, department_name, price, stock_quantity)
values ('green beans', 'food', 5, 150);

insert into products (product_name, department_name, price, stock_quantity)
values ('cereal', 'food', 4, 200);

insert into products (product_name, department_name, price, stock_quantity)
values ('piniata', 'party favors', 35, 10);

insert into products (product_name, department_name, price, stock_quantity)
values ('party hat', 'party favors', 1, 300);

insert into products (product_name, department_name, price, stock_quantity)
values ('lap top', 'electronics', 500, 20);

insert into products (product_name, department_name, price, stock_quantity)
values ('head phones', 'electronics', 45, 15);

insert into products (product_name, department_name, price, stock_quantity)
values ('baby formula', 'children', 40, 2);

select * from products;