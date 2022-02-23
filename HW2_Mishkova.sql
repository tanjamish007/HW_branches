-- ������� ������� employees
	-- id. serial,  primary key,
	-- employee_name. Varchar(50), not null
    
create table employees(
	id serial primary key,
	employee_name varchar(50) not null unique
);

-- ��������� ������� employee 70 ��������.

insert into employees(id, employee_name)
values (default, '���� �������'),
	   (default, '������� �������'),
	   (default, '������ �����'),
	   (default, '���� �������'),
	   (default, '������ ��������'),
	   (default, '������� ����������'),
	   (default, '������ �����������'),
	   (default, '����� ��������'),
	   (default, '������� �������'),
	   (default, '���������� ����������'),
	   (default, '���� ������'),
	   (default, '����� ���������'),
	   (default, '���������� �������'),
	   (default, '�������� �����'),
	   (default, '����� ��������'),
	   (default, '������ ����������'),
	   (default, '����� ����������'),
	   (default, '������� ��������'),
	   (default, '����� ��������'),
	   (default, '��������� ����������'),
	   (default, '���� �������'),
	   (default, '����� �������'),
	   (default, '������ ��������'),
	   (default, '��������� �������'),
	   (default, '������� ��������'),
	   (default, '������ ���������'),
	   (default, '������ �������'),
	   (default, '�������� ��������'),
	   (default, '������ �������'),
	   (default, '����� �����'),
	   (default, '���� �������'),
	   (default, '������ �������'),
	   (default, '������� �����'),
	   (default, '������ �����'),
	   (default, '��� ���������'),
	   (default, '������ ��������'),
	   (default, '����� �����������'),
	   (default, '������� ��������'),
	   (default, '���� ���������'),
	   (default, '������� ��������'),
	   (default, '������� �����'),
	   (default, '��������� ��������'),
	   (default, '���������� �������'),
	   (default, '����� ��������'),
	   (default, '����� ��������'),
	   (default, '������� ������'),
	   (default, '������ ������'),
	   (default, '������ ��������'),
	   (default, '������ ������'),
	   (default, '������ ��������'),
	   (default, '����� ���������'),
	   (default, '����� ���������'),
	   (default, '���������� ���������'),
	   (default, '�������� ��������'),
	   (default, '���� ���������'),
	   (default, '����� ���������'),
	   (default, '���� ��������'),
	   (default, '������ ������'),
	   (default, '������ �����'),
	   (default, '������ ��������'),
	   (default, '���� ������'),
	   (default, '���� ��������'),
	   (default, '���������� ���������'),
	   (default, '������ �����'),
	   (default, '����� ��������'),
	   (default, '�������� ��������'),
	   (default, '���� ��������'),
	   (default, '����� ��������'),
	   (default, '������� ��������'),
	   (default, '����� �����');
	  
select * from employees;

-- ������� ������� salary
	-- id. Serial  primary key,
	-- monthly_salary. Int, not null
   
create table salary(
	id serial primary key,
	monthly_salary int not null 
);

-- ��������� ������� salary 15 ��������:

insert into salary(id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400),
	   (default, 2500);
	  
select * from salary;

-- ������� ������� employee_salary
	-- id. Serial  primary key,
	-- employee_id. Int, not null, unique
	-- salary_id. Int, not null
    
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

-- ��������� ������� employee_salary 40 ��������:
	-- � 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary (employee_id, salary_id)
values (41, 8),
	   (70, 7),
	   (42, 2),
	   (57, 13),
	   (6, 2),
	   (54, 9),
	   (16, 3),
	   (27, 3),
	   (50, 12),
	   (51, 12),
	   (1, 5),
	   (65, 15),
	   (56, 11),
	   (10, 6),
	   (5, 8),
	   (19, 8),
	   (66, 14),
	   (61, 14),
	   (52, 1),
	   (11, 10),
	   (55, 9),
	   (58, 1),
	   (49, 1),
	   (15, 12),
	   (14, 15),
	   (40, 8),
	   (34, 10),
	   (60, 12),
	   (33, 12),
	   (13, 14),
	   (71, 2),
	   (72, 5),
	   (73, 8),
	   (74, 12),
	   (75, 15),
	   (76, 4),
	   (77, 2),
	   (78, 9),
	   (79, 11),
	   (80, 6);
	  
select * from employee_salary;

-- ������� ������� roles
	-- id. Serial  primary key,
	-- role_name. int, not null, unique
   
create table roles (
	id serial primary key,
	role_name int not null unique 
);

-- �������� ��� ������ role_name � int �� varchar(30)
    
alter table roles
alter column role_name type varchar (30);

-- ��������� ������� roles 20 ��������:

insert into roles (id, role_name)
values (default, 'Junior Python developer'),
	   (default, 'Middle Python developer'),
	   (default, 'Senior Python developer'),
	   (default, 'Junior Java developer'),
	   (default, 'Middle Java developer'),
	   (default, 'Senior Java developer'),
	   (default, 'Junior JavaScript developer'),
	   (default, 'Middle JavaScript developer'),
	   (default, 'Senior JavaScript developer'),
	   (default, 'Junior Manual QA engineer'),
	   (default, 'Middle Manual QA engineer'),
	   (default, 'Senior Manual QA engineer'),
	   (default, 'Project Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer');
	  
select * from roles;

	  
-- ������� ������� roles_employee
	-- id. Serial  primary key,
	-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
	-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
        
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id) references employees (id),
		foreign key (role_id) references roles (id)
);

-- ��������� ������� roles_employee 40 ��������:

insert into roles_employee (id, employee_id, role_id)
values (default, 22, 15),
	   (default, 26, 2),
	   (default, 33, 7),
	   (default, 6, 13),
	   (default, 55, 3),
	   (default, 40, 14),
	   (default, 23, 6),
	   (default, 32, 19),
	   (default, 13, 15),
	   (default, 60, 3),
	   (default, 10, 11),
	   (default, 25, 8),
	   (default, 54, 2),
	   (default, 36, 2),
	   (default, 51, 18),
	   (default, 11, 10),
	   (default, 37, 12),
	   (default, 67, 19),
	   (default, 34, 16),
	   (default, 8, 16),
	   (default, 9, 20),
	   (default, 15, 15),
	   (default, 39, 7),
	   (default, 7, 16),
	   (default, 12, 1),
	   (default, 56, 14),
	   (default, 16, 18),
	   (default, 17, 4),
	   (default, 21, 7),
	   (default, 28, 5),
	   (default, 14, 15),
	   (default, 18, 2),
	   (default, 48, 14),
	   (default, 29, 20),
	   (default, 19, 13),
	   (default, 24, 20),
	   (default, 53, 10),
	   (default, 3, 18),
	   (default, 61, 13),
	   (default, 30, 18);
	  
select * from roles_employee;
	   