create database preference;
use preference;
create table phonebook(pname varchar(15),mobno int8);
create table del_phonebook(pname varchar(15),mobno int,modify_date date);
desc phonebook;
desc del_phonebook;
insert into phonebook values('arun',94533217);
insert into phonebook values('adil',94533215);
insert into phonebook values('ajin',94533417);
insert into phonebook values('amal',94533217);
select * from phonebook;
DELIMITER //
CREATE TRIGGER save_old_mobs
AFTER DELETE
ON phonebook
FOR EACH ROW

BEGIN
INSERT INTO del_phonebook (pname,mobno,modify_date)values(old.pname,old.mobno,sysdate());
END;
//
desc phonebook;
desc delete_phonebook;
delete from phonebook where pname='arun';
set sql_safe_updates=0;
select * from del_phonebook;

DELIMITER //
CREATE TRIGGER save_new_mob
AFTER UPDATE
ON phonebook
FOR EACH ROW

BEGIN
INSERT INTO del_phonebook (pname,mobno,modify_date)values(old.pname,old.mobno,sysdate());
END;
//
desc phonebook;
desc del_phonebook;
update phonebook set pname="gopi" where pname="ajin";
set sql_safe_updates=0;
select * from del_phonebook;
