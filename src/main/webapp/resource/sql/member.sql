create database fit_ground;
use fit_ground;


create table member ( 
    id varchar(20) not null,
    pwd varchar(50) not null,
    name varchar(10) not null,
    gender varchar(4),
    email1  varchar(30),
    email2  varchar(30),
    phone varchar(20),
    primary key(id) 
) default CHARSET=utf8;

select * from member;
drop table member;
