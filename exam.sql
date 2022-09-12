create database exam;

connect exam

create table flight (
flight_id int primary key,
orgin varchar(255) not null,
desination varchar(255) not null,
departure_time DATETIME,
arrivale_time DATETIME,
total_seats int);

create table customer(
cust_id int primary key auto_increment,
name varchar(255) not null,
age int not null,
address text not null,
phone int not null,);


create table reservation(
res_id int primary key auto_increment,
flight_id int,
foreign key (flight_id) 
references flight (flight_id),
cust_id int,
foreign key (cust_id)
references customer(cust_id),
source varchar(255) not null,
desination varchar(255) not null,
date Date,
charges int not null
);
