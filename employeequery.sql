select e.emp_no,e.last_name,e.first_name,e.sex ,s.salary
from public."Employees" e join public."Salaries" s on 
e.emp_no =  s.emp_no;

select e.last_name,e.first_name,e.hire_date
from public."Employees" e where date_part('YEAR',hire_date)=1986;

select d.dept_no,e.emp_no,e.last_name,e.first_name
from public."Dept_manager" m 
join public."Departments" d on m.dept_no = d.dept_no
join public. "Employees" e on e.emp_no = m.emp_no;

select d.dept_name,e.emp_no,e.last_name,e.first_name
from public."Dept_emp" m 
join public."Departments" d on m.dept_no = d.dept_no
join public. "Employees" e on e.emp_no = m.emp_no;

select e.first_name,e.last_name,e.sex
from public."Employees" e
where e.first_name ='Hercules'
and e.last_name like 'B%';
 
select d.dept_name,e.emp_no,e.last_name,e.first_name
from public."Dept_emp" m 
join public."Departments" d on m.dept_no = d.dept_no
join public. "Employees" e on e.emp_no = m.emp_no
where d.dept_name = 'Sales';

select e.emp_no,e.last_name,e.first_name,d.dept_name
from public."Dept_emp" m 
join public."Departments" d on m.dept_no = d.dept_no
join public. "Employees" e on e.emp_no = m.emp_no
where d.dept_name in('Sales', 'Developement');

select last_name, count(last_name) 
from public."Employees"
group by last_name
order by count(last_name) desc;


select * from public."Departments";