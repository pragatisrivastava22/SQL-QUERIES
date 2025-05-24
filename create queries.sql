-- create databse
create database if not exists da_batch_10;

-- create tables
create table da_batch_10.students (user_id int);
create table da_batch_10.mentors ( mentor_name varchar (30));
create table da_batch_10.sessions ( sessions_name varchar (50));

-- drop tables
drop table da_batch_10.students;
drop table da_batch_10.mentors;
drop table  da_batch_10.sessions;

-- drop database
drop database da_batch_10;

-- create database 
create database pragati_mart;

-- create table of users, inventory & transections
create table pragati_mart.users
(user_id int, 
name varchar(30),
mail varchar (30), 
phone_number char(10), 
DOB date, 
city varchar(20), 
marital_status varchar(10), 
sex varchar(10));

create table pragati_mart.inventory
(product_id int, 
name varchar(30), 
quantity int, 
category varchar (30), 
marked_price int, 
dis_price int, 
manifacturer varchar(30), 
date_of_man date, 
batch_no int, 
expiry_date date);

create table pragati_mart.transections 
(trans_id int, 
product_id int, 
user_id int, 
amount int, 
mode_of_payment varchar(30), 
date_time datetime);

create database if not exists openAI;

create table if not exists openAI.users 
(user_id varchar (10), name varchar (30), mail varchar (30), phone varchar(18),
 DOB date, city varchar (30), marital_status varchar(10), sex varchar (10));