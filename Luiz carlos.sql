create database vendas;
use vendas;idnome
Create table produto (
	id int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(100),
    preco float
);
create table notafiscal (
    numero int,
    data date,
    valor float
);
create table item (
    codigo_produto int,
    numero_nf int,
    numero_item int,
    quantidade_item int
);
alter table produto modify column descricao varchar(50);

alter table notafiscal
add column ICMS float after numero;

alter table produto
add column peso float;

select * from produto;
select * from notafiscal;

insert into produto (nome, descricao, preco)
values ('Arroz', 'Arroz pacote 5kg', '18.90'),
('Feijão', 'Feijão pacote 2kg', '7.85'),
('Macarrão', 'Pacote 500g', '3.99'),
('Óleo', 'Óleo de soja 500ml', '5.99'),
('Refrigerante', 'Refrigerante Tubaína 2l', '6.99');