select id, name 

from customers 

where id not in (select id_customer  from locations) 