use sql_query; 
select * from employee


select min(salary) as min_salary,
       avg(salary) as avg_salary,
       case
           when avg(salary) > 78000 then 'big'
           else 'small'
       end as remarks
from employee;



declare 
	@avg_sal INT; 
select @avg_sal = AVG(salary) from employee 
begin 
	print @avg_sal 
end
