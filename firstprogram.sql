create database student_details;
use student_details;
create table student (id int,
student_name varchar(20),address varchar(50),mathematics int,physics int,
computerscience int,total int);
insert into student values(1,'archana','thachampalath',100,100,100,300);
insert into student values(2,'narshina','kizhakkayil',100,100,100,300);
insert into student values(3,'ammu','love',100,100,98,298);
insert into student values(4,'anu','kizhakkayil',100,100,80,280);
insert into student values(5,'manu','babu',100,100,100,300);
insert into student values(6,'raju','peace',100,51,100,251);
insert into student values(7,'fathima','kuyil',100,100,21,221);
insert into student values(8,'ayisha','flower',100,50,100,250);
insert into student values(9,'shuhana','kondotty',100,1,100,201);
insert into student values(10,'sufail','kattil',10,100,10,120);
select * from student;
select id,student_name from student;
select id,student_name from student where total>250;
select student_name from student where address='kondotty';