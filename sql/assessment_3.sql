create table students (
	student_id SERIAL primary key,
	first_name VARCHAR(50) not null,
	last_name  VARCHAR(50) not null,
	homeroom_number INTEGER, 
	phone varchar(20) unique not null,
	email varchar(100) unique,
	graduation_year varchar(4) 
);


create table teachers (
	teacher_id SERIAL primary key,
	first_name VARCHAR(50) not null,
	last_name  VARCHAR(50) not null,,
	homeroom_number INTEGER,
	department VARCHAR(50),
	phone varchar(20) unique,
	email varchar(100) unique,
);


insert into students (first_name, last_name, phone, graduation_year, homeroom_number)
values 
('Mark', 'Watney', '777-555-1234', '2035', '5');


insert into teachers (first_name, last_name, homeroom_number, department, email, phone)
values 
('Jonas', 'Salk', '5', 'Biology', 'jsalk@school.org', '777-555-4321');

