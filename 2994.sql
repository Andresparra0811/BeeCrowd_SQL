select d.name,  

round(sum((a.hours * 150.0) + (((a.hours * 150.0) * w.bonus) / 100.0)), 1) as Salary 

from attendances as a 

inner join doctors as d  

on  a.id_doctor=d.id  

inner join  

work_shifts as w  

on a.id_work_shift= w.id    

group by d.id 

order by Salary DESC 