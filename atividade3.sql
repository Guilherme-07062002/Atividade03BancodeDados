create database if not exists atividade03;
use atividade03;

drop table if exists produto;
create table if not exists produto(
id_nf integer,
id_item integer,
cod_prod integer not null,
valor_unit numeric(5, 2) not null,
quantidade integer not null,
desconto integer,

primary key(id_nf, id_item)
);

insert into produto 
(id_nf, id_item, cod_prod, valor_unit, quantidade, desconto)
values
(1, 1, 1, 25, 10, 5),
(1, 2, 2, 13.50, 3, null),
(1, 3, 3, 15, 2, null),
(1, 4, 4, 10, 1, null),
(1, 5, 5, 30, 1, null),
(2, 1, 3, 15, 4, null),
(2, 2, 4, 10, 5, null),
(2, 3, 5, 30, 7, null),
(3, 1, 1, 25, 5, null),
(3, 2, 4, 10, 4, null),
(3, 3, 5, 30, 5, null),
(3, 4, 2, 13.5, 7, null),
(4, 1, 5, 30, 10, 15),
(4, 2, 4, 10, 12, 5),
(4, 3, 1, 25, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15, 3, null),
(5, 2, 5, 30, 6, null),
(6, 1, 1, 25, 22, 15),
(6, 2, 3, 15, 25, 20),
(7, 1, 1, 25, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15, 10, 4),
(7, 4, 5, 30, 10, 1);

-- select * from produto;

-- a)
-- select id_nf, id_item, cod_prod, valor_unit from produto where desconto is null;

-- b)
-- select id_nf, id_item, cod_prod, valor_unit, valor_unit - ((desconto / 100) * valor_unit) as valor_vendido from produto where desconto is not null;

-- c)
-- update produto set desconto = 0 where desconto is null;
-- select * from produto;

-- d)
-- select 
-- id_nf, id_item, cod_prod, desconto, valor_unit, 
-- valor_unit - ((desconto / 100) * valor_unit) as valor_vendido,  
-- (valor_unit - ((desconto / 100) * valor_unit)) * quantidade as  valor_total 
-- from produto 
-- where desconto != 0;

-- e)
-- select id_nf, sum((quantidade * valor_unit)) as valor_total from produto group by id_nf;

-- f)
-- select id_nf, valor_unit - (valor_unit * (desconto / 100)) as valor_vendido from produto order by valor_vendido desc;

-- g)
-- select cod_prod, sum(quantidade) from produto group by cod_prod order by sum(quantidade) desc;

-- h)
-- select id_nf, cod_prod, quantidade from produto where quantidade > 10;

-- i)
-- select id_nf, sum(quantidade * valor_unit) as valor_total from produto group by id_nf having valor_total > 500 order by valor_total desc;

-- j)
-- select cod_prod, menor, maior, media from produto;
