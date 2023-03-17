create database stu_details;
use stu_details;
create table student (id int,
student_name varchar(20),address varchar(50),mathematics int,physics int,
computerscience int,total int);
insert into student values(1,'archana','kozhikode',100,100,100,300);
insert into student values(2,'narshina','ulliyeri',100,100,100,300);
insert into student values(3,'adwaith','mankav',100,100,98,298);
insert into student values(4,'anu','kannur',100,100,80,280);
insert into student values(5,'manu','kottayam',100,100,100,300);
insert into student values(6,'reema','palakad',100,51,100,251);
insert into student values(7,'fathima','kasargod',100,100,21,221);
insert into student values(8,'ayisha','malappuram',100,50,100,250);
insert into student values(9,'shuhana','kondotty',100,1,100,201);
insert into student values(10,'sarang','kochi',10,100,10,120);
insert into student values(11,'varun','kollam',10,10,10,30);
select * from student;
select id,student_name from student;
select id,student_name from student where total>250;
select student_name from student where address='kozhikode';
update student set total=250 where student_name='varun';
select *from student;
delete from student where student_name='sarang';
update student set student_name='robin zacariya' where student_name='adwaith';
select * from student where student_name='reema' and total is not null;