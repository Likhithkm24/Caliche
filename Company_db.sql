CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  hire_date DATE,
  job_title VARCHAR(100),
  salary DECIMAL(10,2),
  department_id INT,
  manager_id INT
);
select * from employees;
INSERT INTO employees(employee_id, first_name, last_name, email, job_title, hire_date, salary, department_id, manager_id) 
  value ('3', 'Shashi', 'Kumar', 'Shashi@xyz.com','Maneger', '2023-11-01','200000','0001', null);
update employees set employee_id = '1' where employee_id = 4;


CREATE TABLE managers (
  manager_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);
select * from managers;
INSERT INTO managers( manager_id,first_name, last_name, email) 
  value ('3', 'Adhi', 'Kumar', 'MAdhi@xyz.com');
update employees set employee_id = '1' where employee_id = 4;

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100),
  manager_id INT
);
select * from departments;
insert into departments(department_id, department_name, manager_id) value ('03','CDEF','03');

CREATE TABLE dept_managers (
  dept_manager_id INT PRIMARY KEY,
  department_id INT,
  manager_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(department_id),
  FOREIGN KEY (manager_id) REFERENCES managers(manager_id)
);
select * from dept_managers;
insert into dept_managers(dept_manager_id,department_id, manager_id) value ('03','03','03');

CREATE TABLE projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(100),
  start_date DATE,
  end_date DATE,
  department_id INT,
  project_budget DECIMAL(10,2),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
select * from projects;
insert into projects(project_id, project_name, start_date, end_date, department_id, project_budget) value ('03','ghi','2023-04-01','2023-05-01','3','1000000');

CREATE TABLE project_teams (
  project_team_id INT PRIMARY KEY,
  project_id INT,
  employee_id INT,
  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
select * from project_teams;
insert into project_teams(project_team_id, project_id, employee_id) value ('01','01','997');



CREATE TABLE skills (
  skill_id INT PRIMARY KEY,
  skill_name VARCHAR(100)
);
select * from skills;
insert into skills(skill_id, skill_name) value ('06','Machine Learning');


CREATE TABLE emp_skills (
  emp_skill_id INT PRIMARY KEY,
  employee_id INT,
  skill_id INT,
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);
select * from emp_skills;
insert into emp_skills(emp_skill_id, employee_id, skill_id) value ('05','998','3');

show tables;
desc employees;
desc  managers;
desc departments;
desc dept_managers;
desc projects;
desc project_teams;
desc skills;
desc emp_skills;


