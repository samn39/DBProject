-- ACCOUNTS TABLE
drop table if exists account;
Create table account (username varChar(10), password varchar(50), firstname varchar(50), lastname varchar(50), userType varchar(50), primary key(username));
insert into account values("bob", "hi123", "bob", "bob", "User");
insert into account (username, firstname, lastname, userType) values("admin", "adminF", "adminL", "Admin");
insert into account (username, firstname, lastname, userType) values("cusrep", "cusrepF", "cusrepL", "Rep");

Create table customerRep (username varChar(10), password varchar(50), primary key(username), foreign key(username) references account(username));
insert into customerRep values("cusrep","cusrep");

-- admin account (admin, password: admin)
Create table admin (username varChar(10), password varchar(50), primary key(username), foreign key(username) references account(username));
insert into admin values("admin","admin");

-- questions
Create table question(questionID int AUTO_INCREMENT, question varchar(500), answer varchar(500), username varchar(50), customerRep_username varchar(50), foreign key (username) references account(username), foreign key (customerRep_username) references customerRep(username), primary key(questionID)); 
Alter table question
Alter answer set default "This question has not been answered yet.";

-- ITEMS TABLE
drop table if exists items;
create table items(
product_id int NOT NULL AUTO_INCREMENT,
clothing_type varchar(50),
size varchar(2),
brand varchar(50),
seller varchar(50),
primary key(product_id));

-- AUCTIONS TABLE
drop table if exists auctions;
CREATE TABLE auctions (
auction_id int NOT NULL AUTO_INCREMENT,
    product_id int,
    seller VARCHAR(50),
	closing_date DATE,
    closing_time TIME,
	min_price FLOAT default 0,
    bid_increment float default 1,
    curr_bid FLOAT default 0,
    highest_bidder varchar(50),
    primary key (auction_id)
);

-- BIDS TABLE
drop table if exists bids;
CREATE TABLE bids (
    bid_id int NOT NULL AUTO_INCREMENT,
    buyer VARCHAR(50),
    auction_id INT,
    upper_limit FLOAT DEFAULT 0,
    is_autobid BOOLEAN DEFAULT FALSE,
    bid_amount FLOAT DEFAULT 0,
    primary key (bid_id)
);
    
-- ALERTS TABLE
drop table if exists alerts;
CREATE TABLE alerts (
    alert_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    alert_msg VARCHAR(500),
    product_id INT,
    auction_id INT,
    PRIMARY KEY (alert_id)
);
