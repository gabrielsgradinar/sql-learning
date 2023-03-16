-- INSERT

insert into account (username, password, email, created_on)
values 
('Jose', 'password_123', 'jose@gmail.com', CURRENT_TIMESTAMP);

insert into job (job_name)
values
('Astronaut');

insert into account_job (user_id, job_id, hire_date)
values
(1, 1, CURRENT_TIMESTAMP);


-- UPDATE

update account 
set last_login = current_timestamp;


update account_job 
set hire_date = account.created_on
from account 
where account_job.user_id = account.user_id;

-- DELETE

delete from job 
where job_name = 'Cowboy'
returning job_id, job_name;
