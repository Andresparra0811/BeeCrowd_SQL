select
empregado.nome,
round(sum(distinct coalesce(vencimento.valor, 0)) - sum(distinct coalesce(desconto.valor, 0)), 2) as salario
from empregado
left join emp_desc 
on emp_desc.matr = empregado.matr
left join desconto 
on desconto.cod_desc = emp_desc.cod_desc
inner join emp_venc 
on emp_venc.matr = empregado.matr
inner join vencimento 
on vencimento.cod_venc = emp_venc.cod_venc
group by empregado.nome, empregado.lotacao
having round(sum(distinct coalesce(vencimento.valor, 0)) - sum(distinct coalesce(desconto.valor, 0)), 2) > 8000
order by empregado.lotacao asc;
