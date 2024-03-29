create table account(
	user_id SERIAL primary key,
	username VARCHAR(50) unique not null,
	password VARCHAR(50) not null,
	email VARCHAR(250) unique not null,
	created_on TIMESTAMP not null,
	last_login TIMESTAMP
);

create table job(
	job_id SERIAL primary key,
	job_name VARCHAR(200) unique not null
);

create table account_job(
	user_id INTEGER references account(user_id),
	job_id INTEGER references job(job_id),
	hire_date TIMESTAMP
);

create table employees( 
	emp_id SERIAL primary key,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	birthdate DATE check (birthdate > '1900-01-01'),
	hire_date date check (hire_date > birthdate),
	salary integer check (salary > 0)
);


-- ALTER TABLE

alter table information 
rename to new_info

alter table new_info
rename column person to people

alter table new_info
alter column people drop not null

alter table new_info
drop column people


