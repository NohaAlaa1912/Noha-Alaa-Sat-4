
--->>>.>>>> create data base
CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci';


--> details about tables
---------
1-governorates-->
id --> int-> auto increament-> primary key ->unsigned
name --> varchar(255)->not null
govern_code--> varchar(3)-->not null->
-------------------------------------------------
2-products
id-->int-> auto increament-> primary key->unsigned
name-->varchar(255)->varchar(255)->not null
code-->varchar(50)-->not null->
description-->text()--> null
price--> int()--> not null-unsigned

--------------------------------
3-stores
id -->int-> auto increament-> primary key->unsigned
name -->varchar(255)->varchar(255)->not null
address-->varchar(255)->not null
product_id-->int()----->forgin key->unsigned
governorate_id-->int()-------->forgin key->unsigned
---------------------------------
4-suppliers
id -->int-> auto increament-> primary key->unsigned
name-->varchar(255)->not null
phone-->varchar(25)->not null->
email-->varchar(200)->not null
brief_data-->text()--> null
products_id-->int()----->forgin key-->unsigned
---------------------------------------------------

-->>>>.>>>create tables

CREATE TABLE governorates (
    id INTEGER unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    govern_code VARCHAR(3) NOT NULL ,
    PRIMARY KEY(id)
);
----------------------------------------------------
CREATE TABLE products (
    id INTEGER unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    code varchar(50) not null,
    description text() null ,
    price int() not null unsigned,
    PRIMARY KEY(id)

);
--------------------------------------------------
CREATE TABLE stores (
    id INTEGER unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address varchar(255) not null,
    products_id int() unsigned,
    governorates_id int() unsigned,
    PRIMARY KEY(id),
    FOREIGN KEY(products_id) REFERENCES products(id),
    FOREIGN KEY(governorates_id) REFERENCES governorates(id)
);
------------------------------------------------------
CREATE TABLE stores (
    id INTEGER unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone varchar(25) not null,
    email varchar(200) not null,
    brief_data text() null,
    products_id int() unsigned,
    PRIMARY KEY(id),
    FOREIGN KEY(products_id) REFERENCES products(id)

);


----->.>>  insert data to tables

--------------------------------
INSERT INTO governorates (name,govern_code) value ('cairo','02'),
('Al Gharbia','040'),('Alexandria','03'),('Aswan','097'),
('sohag','093')
-------------------------------------------------
INSERT INTO products (name,code, description,price) value ('mobile','08837462',null, 4000),
('monitor','777759498','nice', 5000),('laptop','08873763','good', 20000),
('printer','0937364421',null, 6000)
------------------------------------------------------
INSERT INTO stores (name,address, products_id,governorates_id) value ('hp','3st mostafa mahmoud-gharbia', 1 , 2),
('zaytona','408st misada2-dokki', 2 , 1),('elmor4edy','64st monib-aswan', 4 , 4),
('noon','374st elsa7el-alexandria', 4 , 3)
---------------------------------------------------------------
INSERT INTO suppliers (name,phone, email,brief_data,products_id) value ('elbadr','0257746543','elbadrgroup@gmail.com', null, 3),
('mansour','01442333474','mansourcompany3@gmail.com', 'international company for imports and exports', 4),
('mahmoud shrief','0100746454','mahmoudsh34@gmail.com', null, 2),
('3amer','0257746543','3amergroup@gmail.com','A global company and all the products you need are available with us', 1)