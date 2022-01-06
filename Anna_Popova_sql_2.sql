create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);

insert into employees (employee_name)
values ('Абрамович'),
	('Аверинцев'),
	('Авраменко'),
	('Адамс'),
	('Аккерман'),
	('Аксаков'),
	('Алейников'),
	('Дюма'),
	('Алексеева'),
	('Митрофанов'),
	('Алиев'),
	('Андреев'),
	('Антокольский'),
	('Армстронг'),
	('Ашлаг'),
	('Бабкин'),
	('Бабушкин'),
	('Барнс'),
	('Баталов'),
	('Бах'),
	('Белинский'),
	('Белов'),
	('Бёрк'),
	('Берн'),
	('Бёрнс'),
	('Берроуз'),
	('Бехтерев'),
	('Блок'),
	('Богомолов'),
	('Богословский'),
	('Бойко'),
	('Браун'),
	('Бронте'),
	('Булгаков'),
	('Бунин'),
	('Буш'),
	('Быков'),
	('Бэкон'),
	('Васильев'),
	('Вашингтон'),
	('Вебер'),
	('Вирт'),
	('Вишневский'),
	('Вольф'),
	('Ворошилов'),
	('Гайдн'),
	('Ганди'),
	('Гачев'),
	('Герберт'),
	('Гинзбург'),
	('Глазунов'),
	('Глинка'),
	('Гоголь'),
	('Гонкур'),
	('Гофман'),
	('Григорьев'),
	('Грин'),
	('Гроза'),
	('Гумбольдт'),
	('Гумилёв'),
	('Гусев'),
	('Даль'),
	('Дарвин'),
	('Дворжак'),
	('Декурсель'),
	('Дефо'),
	('Джеймс'),
	('Джексон'),
	('Джонсон'),
	('Ерофеев');

select* from employees;

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000),
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
	(2400);

select * from salary;

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values (3, 7),
	(1, 4),
	(5, 9),
	(40, 13),
	(23, 4),
	(11, 2),
	(52, 10),
	(15, 13),
	(26, 4),
	(16, 1),
	(33, 7),
	(73, 1),
	(72, 8),
	(71, 10),
	(74, 4),
	(75, 7),
	(76, 9),
	(77, 4),
	(78, 6),
	(79, 11),
	(80, 2),
	(2, 13),
	(4, 11),
	(10, 8),
	(6, 2),
	(7, 12),
	(8, 7),
	(9, 9),
	(27, 5),
	(13, 7),
	(12, 3),
	(14, 6),
	(25, 9),
	(29, 12),
	(17, 11),
	(18, 13),
	(19, 7),
	(20, 5),
	(21, 6),
	(22, 15);

select * from employee_salary;

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles; 

ALTER TABLE roles 
drop role_name;

ALTER TABLE roles
add role_name varchar(30) not null unique;

insert into roles (role_name)
	values ('Junior Python developer'),
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

create table roles_employee (
	id serial primary key,
	employee_id int not null,
		foreign key (employee_id)
		references employees (id),
	role_id int not null,
		foreign key (role_id)
		references roles (id)
);

insert into roles_employee (employee_id, role_id)
	values (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 2),
		(2, 13),
		(4, 2),
		(6, 6),
		(8, 8),
		(9, 4),
		(12, 6),
		(13, 11),
		(14, 3),
		(15, 7),
		(16, 9),
		(17, 2),
		(18, 5),
		(19, 7),
		(24, 9),
		(25, 10),
		(26, 13),
		(27, 2),
		(28, 4),
		(29, 2),
		(30, 3),
		(31, 11),
		(32, 10),
		(33, 7),
		(35, 8),
		(36, 9),
		(37, 6),
		(38, 1),
		(39, 7);
	
	select * from roles_employee;
