select c.name, sum(p.amount) 

from categories as c  

inner join products as p  

on c.id = p.id_categories  

group by  c.name 