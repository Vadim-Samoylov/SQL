/* Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
 */
create table employees (
id serial primary key,
employee_name varchar(50) not null);

/* Наполнить таблицу employee 70 строками
 */

insert into employees (employee_name) values
	('Richard'),
	('Monica'),
	('Chandler'),
	('Rachel'),
	('Ellen'),
	('Stephan'),
	('Edward'),
	('Taylor'),
	('Britney'),
	('Maria'),
	('Bob'),
	('Jessica'),
	('Jennifer'),
	('Wendy'),
	('Joe'),
	('Barak'),
	('Kanye'),
	('Vadim'),
	('Mila'),
	('Rocki'),
	('Orlando'),
	('Katy'),
	('Elithabeth'),
	('Robert'),
	('Alex'),
	('Nick'),
	('Justin'),
	('Opra'),
	('Ben'),
	('Jimmy'),
	('Andy'),
	('Norma'),
	('Janet'),
	('Teri'),
	('Lynette'),
	('Donna'),
	('Larry'),
	('David'),
	('Sam'),
	('Isis'),
	('Kim'),
	('Travis'),
	('Chloe'),
	('Emma'),
	('Eva'),
	('Rayan'),
	('Bill'),
	('Whoppi'),
	('Marlee'),
	('Kendal'),
	('Reign'),
	('Tomas'),
	('Debra'),
	('Dion'),
	('Nickole'),
	('Mandy'),
	('Paul'),
	('Ruth'),
	('Eduardo'),
	('Roberto'),
	('Susanne'),
	('Chris'),
	('Jean'),
	('Nency'),
	('Matt'),
	('Joel'),
	('July'),
	('Robert'),
	('Kaley'),
	('North');
	
select * from employees;

drop table employees;

/* Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 */

create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary (monthly_salary) values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

/* Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
 */

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id, salary_id) values
(71, 3),
(77, 2),
(79, 10),
(87, 8),
(74, 6),
(82, 2),
(97, 4),
(90, 3),
(86, 7),
(80, 9),
(2, 12),
(4, 10),
(6, 7),
(8, 2),
(10, 1),
(1, 6),
(3, 2),
(5, 8),
(7, 9),
(9, 11),
(12, 12),
(14, 10),
(16, 7),
(18, 2),
(20, 1),
(11, 6),
(13, 2),
(15, 8),
(17, 9),
(19, 11),
(22, 12),
(24, 10),
(26, 7),
(28, 2),
(30, 1),
(21, 6),
(23, 2),
(25, 8),
(27, 9),
(29, 11);

select * from employee_salary;

drop table employee_salary;

/* Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками: */

create table roles (
id serial primary key,
role_name int not null unique
);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name) values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;

/* Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками */

create table roles_employee (
id serial primary key,
employee_id int not null unique,  
role_id int not null, 
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id)
);

insert into roles_employee (employee_id, role_id) values
(42,1),
(30,2),
(29,3),
(22,4),
(10,5),
(11,6),
(19,7),
(50,8),
(47,9),
(48,10),
(20,11),
(9,12),
(55,13),
(60,14),
(7,15),
(4,16),
(15,17),
(14,18),
(21,19),
(28,20);

insert into roles_employee (employee_id, role_id) values
(31,1),
(32,2),
(33,3),
(34,4),
(35,5),
(36,6),
(37,7),
(38,8),
(39,9),
(40,10),
(41,11),
(52,12),
(43,13),
(44,14),
(45,15),
(46,16),
(57,17),
(58,18),
(69,19),
(63,20);

select * from roles_employee;




