Create database DBproject;
Use DBproject;

Create table account (username varChar(10), password varchar(50), firstname varchar(50), lastname varchar(50), userType varchar(50), primary key(username));

-- ALTER TABLE account
-- ADD userType varchar(50);
insert into account values("bob123", "hi123", "bob", "bob", "User");

Create table customerRep (username varChar(10), password varchar(50), primary key(username), foreign key(username) references account(username));
insert into customerRep values("cusrep","cusrep");


Select * from account;