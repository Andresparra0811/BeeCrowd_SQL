select c.name, c.investment, 
ceiling((c.investment / avg(distinct o.profit))) as month_of_payback, 
(sum(o.profit) - c.investment) as return
from clients as c
inner join operations as o
on c.id = o.client_id
where o.month in (1,2,3)
group by c.id
having (sum(o.profit) - c.investment) >= 0
order by return desc;