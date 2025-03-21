create table user
(
id int unsigned,
name varchar(100),
email varchar(150),
password varchar (100),
contect varchar(12),
address text,
DOB date,
Gender enum("m","F","o"),
status boolean
)