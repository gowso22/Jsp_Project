CREATE TABLE notice (
       nid int not null,
       title varchar(50) not null,
       content varchar(1000) not null,
       userid varchar(20),
       regDate varchar(20),
       PRIMARY KEY (nid)
)default CHARSET=utf8;

select * from notice;
desc notice;
drop table notice;
