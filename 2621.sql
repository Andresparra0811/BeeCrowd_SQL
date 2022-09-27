select prod.name from products as prod 

inner join providers as prov 

on prod.id_providers= prov.id 

where (prod.amount between 10 and 20) and prov.name like 'P%' 