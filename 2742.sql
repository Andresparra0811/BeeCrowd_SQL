select l.name, round((l.omega * 1.618), 3) as "The N Factor"  

from life_registry as l  

join dimensions as d  

on l.dimensions_id = d.id  

where (d.name in ('C875', 'C774')) and (l.name like 'Richard%') 

order by l.omega asc 