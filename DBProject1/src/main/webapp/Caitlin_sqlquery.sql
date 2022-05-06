-- ACCOUNTS TABLE
drop table if exists account;
Create table account (username varChar(10), password varchar(50), firstname varchar(50), lastname varchar(50), userType varchar(50), primary key(username));
insert into account values("bob123", "hi123", "bob", "bob", "User");
Select * from account;

-- ITEMS TABLE
drop table if exists items;
create table items(product_id int auto_increment primary key,
clothing_type varchar(50),
size varchar(2),
brand varchar(50),
seller varchar(50));
-- select * from items;

-- AUCTIONS TABLE
drop table if exists auctions;
CREATE TABLE auctions (
auction_id int primary key auto_increment,
    product_id VARCHAR(50),
    seller VARCHAR(50),
	closingdt DATETIME,
	min_price FLOAT default 0,
    bid_increment float default 1,
    curr_bid FLOAT default 0,
    highest_bidder varchar(50)
);
-- insert into auctions values ("1", "shirt", "M", "zara", "bob123", '2022-06-06 23:59:59', 10.00, 10.00);
select * from auctions;

-- BIDS TABLE
drop table if exists bids;
CREATE TABLE bids (
    bid_id INT PRIMARY KEY AUTO_INCREMENT,
    buyer VARCHAR(50),
    auction_id INT,
    upper_limit FLOAT DEFAULT 0,
    is_autobid BOOLEAN DEFAULT FALSE,
    bid_amount FLOAT DEFAULT 0
);
    
-- ALERTS TABLE
drop table if exists alerts;
CREATE TABLE alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    alert_msg VARCHAR(500),
    product_id INT,
    auction_id INT
);

