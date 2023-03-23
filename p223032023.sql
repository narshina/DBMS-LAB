create table cust(id int,name varchar(20),city varchar(20));
use stu_details;
DELIMITER //
create procedure pl2()
begin
select name,id from cust where city='calicut';
end //
DELIMITER ;

insert into cust value(1,'narshina','calicut');
insert into cust value(2,'archana','kochi');
insert into cust value(3,'minnus','kottayam');
CALL pl2();