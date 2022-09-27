select c.name, cast((((s.math * 2) + (s.specific * 3) + (s.project_plan * 5)) / 10) as numeric (15, 2)) as avg 

from candidate as c 

inner join score as s  

on c.id = s.candidate_id 