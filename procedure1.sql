use db1;
create table details(id int primary key,name varchar(20),address varchar(30),number int(10));
create table student(s_id int,name varchar(20));
drop table student;
create table stud1(s_id int auto_increment key,name varchar(20));
select *from stud1;
insert into stud1 values(1,'Anu');
select *from stud1;
insert into stud1 values(2,'Vinu');
DELIMITER //

CREATE PROCEDURE getAllDetails()
BEGIN
select *from stud1;
END //

DELIMITER ;

call getAllDetails();
create table customers(customer_id int(10) not null,customer_name varchar(20) not null,city varchar(50));
create table cust(c_id int primary key,c_name varchar(20),city varchar(20));
insert into cust values(1,'felix','kannur');
insert into cust values(2,'Anu','palakkad');
insert into cust values(3,'Vinu','kozhikode');
insert into cust values(4,'manu','malappuram');
insert into cust values(5,'akash','wayanad');
select *from cust;
DELIMITER //

CREATE PROCEDURE getAllDetails8()
BEGIN
select *from cust;
END //

DELIMITER ;
call getAllDetails8();
