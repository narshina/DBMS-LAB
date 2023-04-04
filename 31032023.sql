use student_details;
show tables;
select * from section;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,'computer science',20);
insert into section values(2,'portal',45);
insert into section values(3,'greekforgeeks',60);
DELIMITER //

CREATE FUNCTION totalSrgth()
RETURNS int
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SET total=0;
  SELECT SUM(strength) INTO total FROM section;
  RETURN total;
  END;
  
//
DELIMITER ;
SELECT totalSrgth();