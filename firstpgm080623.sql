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
select * from student where address='kozhikode' or address='malappuram';
alter table student add column department varchar(50);
update student set department='CS' where id=1;
update student set department='BSC.Maths' where id=2;
update student set department='BCA' where id=3;
update student set department='MCA' where id=4;
update student set department='BSC.Physics' where id=5;
update student set department='MCA' where id=6;
update student set department='CS' where id=7;
update student set department='CS' where id=8;
update student set department='BSC.Maths' where id=9;
update student set department='CS' where id=10;
update student set department='BCA' where id=11;
select * from student order by student_name desc; 
update student set address=null where id=6;
select * from student where address is null;
select * from student;
select max(total) from student;
select min(maths) from student;
select avg(computerscience) from student;
select sum(physics) from student;
select department from student where department like '%s';
select student_name from student where student_name like 'a%';
alter table student drop total;
alter table student add column total_mark int;
update student set total_mark=mathematics+physics+computerscience where id=1;
update student set total_mark=mathematics+physics+computerscience where id=2;
update student set total_mark=mathematics+physics+computerscience where id=3;
update student set total_mark=mathematics+physics+computerscience where id=4;
update student set total_mark=mathematics+physics+computerscience where id=5;
update student set total_mark=mathematics+physics+computerscience where id=6;
update student set total_mark=mathematics+physics+computerscience where id=7;
update student set total_mark=mathematics+physics+computerscience where id=8;
update student set total_mark=mathematics+physics+computerscience where id=9;
update student set total_mark=mathematics+physics+computerscience where id=10;
update student set total_mark=mathematics+physics+computerscience where id=11;
alter table student add column age int;
update student set age=21 where id=1;
update student set age=21 where id=2;
update student set age=27 where id=3;
update student set age=25 where id=4;
update student set age=34 where id=5;
update student set age=23 where id=6;
update student set age=20 where id=7;
update student set age=26 where id=8;
update student set age=23 where id=9;
update student set age=22 where id=10;
update student set age=28 where id=11;
create view studentdetails as select student_name from student;
drop view studentdetails;
delete from student where age=25;
select * from student;
commit;
delete from student where age=28;
rollback;
savepoint mca;
update student set age=20 where id=1;
release savepoint mca;
select * from student where total_mark=(select max(total_mark)from student);
alter table  student add column admission_no varchar(5);
create table  department (dep_id int,stud_id int,locaion_id int);
update student set admission_no=1111 where id=1;
update student set admission_no=2167 where id=2;
update student set admission_no=2748 where id=3;
update student set admission_no=2590 where id=4;
update student set admission_no=3434 where id=5;
update student set admission_no=2367 where id=6;
update student set admission_no=2057 where id=7;
update student set admission_no=2612 where id=8;
update student set admission_no=2378 where id=9;
update student set admission_no=2299 where id=10;
update student set admission_no=2875 where id=11;
update student set email='archana@gmail.com' where id=1;
update student set email='narshina34@gmailcom' where id=2;
update student set email='ad34@gmail.com' where id=3;
update student set email='m4nu@gmail.com'  where id=5;
update student set email='rema89@gmail.com'  where id=6;
update student set email='fathima@gmail.com'  where id=7;
update student set email='ayisha@gmail.com'  where id=8;
update student set email='shuhana@gmail.com'  where id=9;
update student set email='sarang@gmail.com'  where id=10;
update student set email='varun@gmail.com'  where id=11;
drop table department;
alter table department add constraint dept_id_pk primary key(dep_id);
insert into department values(11,10,100);
insert into department values(22,20,200);
insert into department values(33,30,333);
insert into department values(44,40,444);
insert into department values(55,50,555);
alter table student modify  student_name varchar(20)not null;
alter table student modify admission_no int not null;