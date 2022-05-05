Create database DBproject;
Use DBproject;

Create table account (username varChar(10), password varchar(50), firstname varchar(50), lastname varchar(50), primary key(username));

insert into account values("bob123", "hi123", "bob", "bob");

Select * from account;