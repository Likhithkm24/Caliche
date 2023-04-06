show databases;
create database Company;
use Company;

create table Department_info
(Dep_ID integer auto_increment, 
Department_Name varchar(25) not null, 
Department_email varchar(25), 
Phone_no integer, 
primary key(Dep_ID));
select * from Department_info;
INSERT INTO Department_info( Department_name, Department_email, Phone_no) value ( 'ABC' , 'ABCD@xyz.com' , 1234567890);
 

create table Employee_info(
Emp_ID integer auto_increment, 
First_Name varchar(25) not null, 
Last_Name varchar(25), 
Email varchar(25), 
Dep_ID integer, 
Phone_no integer, 
Gender varchar(15) not null,
primary key(Emp_ID),
constraint fk_EmpDep foreign key(Dep_ID) references Department_info(Dep_ID));
select * from Employee_info;
INSERT INTO Employee_info(Emp_id, First_Name, Last_Name, Email, Dep_ID, Phone_no, Gender) value (01, 'BCD','EFG', 'BCDEFG@xyz.com' , 01 , 1234567890, 'xxxx');


create table Skills_info
(Skill_ID integer , 
Skill_Discription varchar(25), 
primary key(Skill_ID)); 
select * from Skills_info;
INSERT INTO Skills_info(Skill_ID, Skill_Discription) value (01, 'ABCDEFGH' );

create table Employee_Skills_info
(Emp_ID integer , 
Skill_ID integer, 
Skill_Level varchar(25) not null, 
constraint fk_EmpSkil foreign key(Emp_ID) references Employee_info(Emp_ID));
alter table Employee_Skills_info add foreign key(Skill_ID) references Skills_info(Skill_ID);
select * from Employee_Skills_info;
INSERT INTO Employee_Skills_info(Emp_ID, Skill_ID, Skill_Level) value (01, '01' , 'ABCD@xyz.com');

show tables;
desc Department_info;
desc Employee_info;
desc Skills_info;
desc Employee_Skills_info;


