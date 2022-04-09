Create database DBproject;
Use DBproject;

Create table account (username varChar(10), password varchar(50), primary key(username));

insert into account values("bob123", "hi123"), ("cait123", "cs123"), ("samn123", "idk123");

Select * from account;
