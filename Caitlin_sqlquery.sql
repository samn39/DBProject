-- ACCOUNTS TABLE
-- Create table account (username varChar(10), password varchar(50), firstname varchar(50), lastname varchar(50), primary key(username));

-- ALTER TABLE account
-- ADD userType varchar(50);
-- insert into account values("bob123", "hi123", "bob", "bob", "User");

-- Select * from account;

-- ITEMS TABLE
-- CREATE TABLE `items` (
--   `product_id` varchar(50) NOT NULL,
--   `clothing_type` varchar(50) DEFAULT NULL,
--   `brand` varchar(50) DEFAULT NULL,
--   `seller` varchar(50) DEFAULT NULL,
--   `size` varchar(2) DEFAULT NULL,
--   PRIMARY KEY (`product_id`)
-- ) 
-- insert into items values ("1", "shirt", "zara", "bob123", "M");
-- insert into items values ("2", "pants", "adidas", "bob123", "L");
-- select * from items;

-- AUCTIONS TABLE
CREATE TABLE auctions (
    product_id VARCHAR(50) PRIMARY KEY,
    clothing_type VARCHAR(50),
    size VARCHAR(2),
    brand VARCHAR(50),
    seller VARCHAR(50),
    closingdt DATETIME,
    curr_bid FLOAT,
    min_price FLOAT
);
insert into auctions values ("1", "shirt", "M", "zara", "bob123", '2022-06-06 23:59:59', 10.00, 10.00);
select * from auctions;