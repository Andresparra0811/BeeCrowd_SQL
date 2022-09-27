select prod.name, prov.name, prod.price 

from products as prod 

inner join providers as prov 

on prod.id_providers=prov.id 

inner join categories as cat 

on prod.id_categories= cat.id 

where ((cat.name= 'Super Luxury') and (prod.price>1000)); 