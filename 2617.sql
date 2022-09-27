select p.name, w.name  

from products as p  

inner join providers as w 

on p.id_providers= w.id 

where w.name= 'Ajax SA' 