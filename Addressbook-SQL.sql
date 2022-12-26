create database addressbookDB;
use addressbookDB;
select database();
create table addressbook(
     id       int unsigned not null auto_increment,
     first_name       varchar(10),
     last_name        varchar(10),
     address  varchar(100),
     city     varchar(20),
     state    varchar(20),
     zip      int ,
     phone_number     int,
     email    varchar(30),
     primary key (id)
);
show tables;
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email)
 values ('Aniket','Kumar','ABCcolony','Faridabad','Haryana',424002,987513329,'aniket@gmail.com'),
 ('Sahil','Khan','XYZ Nagar','Bengaluru','Karnataka',451006,77750353,'sahilkhan1994@gmail.com'),
 ('Rohit','Kr','BTM','Bengaluru','Karnataka',560076,75649564,'rohit@gmail.com');
 select * from addressbook;
 update addressbook set city='Bengaluru' where first_name='Saurav';
 select * from addressbook where city='Bengaluru';
 select * from addressbook where state='Haryana';
 select count(*) from addressbook where city='Bengaluru' and state='Karnataka';
 select * from addressbook where city='Bengaluru' order by first_name;
 alter table addressbook add type varchar(20) after last_name;
 describe addressbook;
 update addressbook set type='Professional' where id=3 or id=7 or id=8 or id=9;
 select count(type) as Count,type from addressbook group by type;