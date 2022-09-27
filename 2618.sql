select prod.name,prov.name,c.name from products as prod 

inner join providers as prov 

on prod.id_providers = prov.id 

inner join categories as c 

on prod.id_categories= c.id 

where prov.name= 'Sansul SA' and c.name='Imported' 