create database provareinaldo;
use provareinaldo;
show tables;

create table Tabcliente(
    codcliente int not null auto_increment,
    Nome varchar(45) not null,
    Email varchar(100) not null,
    Cidade varchar(60),
    Data_cadastro date not null,
    primary key (codcliente)
);

CREATE TABLE Tabprodutos(
    codprodutos INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    preco INT,
    estoque INT,
    cod_categoria INT,
    PRIMARY KEY (codprodutos)
);
 

create table Tabvendedores(
    codvendedores int not null auto_increment,
    Nome varchar(45) not null,
    Comissao decimal(10,2),
    Data_adm date,
    primary key (codvendedores)
);

create table Tabpedidos(
codpedidos int not null auto_increment,
data date,
codcliente int,
codvendedor int,
total decimal (10,2),
primary key (codpedidos)
);

create table Tabcategorias(
codcategorias int not null auto_increment,
nome varchar(45),
primary key (codcategorias)
);

ALTER TABLE Tabcliente
ADD telefone VARCHAR(20) NOT NULL;

alter table Tabvendedores
rename column comissao to percentual_ganho;

insert into Tabcategorias (nome) values ("Hardware");
insert into Tabcategorias (nome) values ('Software');
insert into Tabcategorias (nome) values ('Perifericos');
insert into Tabcategorias (nome) values ('Redes');
insert into Tabcategorias (nome) values ('Seguranca da Informacao');

select * from Tabcategorias;


insert into Tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Lorrayne','lorrayne@email.com','Muriae','2026-02-23',32967453443);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Mauricio','mauricio@email.com','Vicosa','2026-02-23',32908765646);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Guilherme','guilherme@email.com','Leopoldina','2026-02-23',32976654535);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Tulio','tulio@email.com','Itamuri','2026-02-23',32970088665);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values('Heitor','heitor@email.com','Eugenopolis','2026-02-23',32965564553);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Leticia','leticia@email.com','Pedra Dourada','2026-02-23',32964522112);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Karine','karine@email.com','Bom Jesus','2026-02-23',32900880078);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Bruna','bruna@email.com','Vermelho','2026-02-23',32965565433);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Felipe','felipe@email.com','Ervalia','2026-02-23',32900007788);
insert into tabcliente (Nome, Email, Cidade, Data_cadastro,Telefone) values ('Laura','laura@email.com','Mirai','2026-02-23',32965564499);

select * from Tabcliente;

insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Mouse Gamer', 150.00, 20, 1);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Teclado Mecânico', 300.00, 15, 1);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Monitor 24', 900.00, 10, 1);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Windows 11', 800.00, 50, 2);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Pacote Office', 500.00, 40, 2);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Roteador', 250.00, 18, 4);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Switch 8 Portas', 400.00, 12, 4);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Antivírus', 120.00, 60, 5);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Impressora', 700.00, 8, 3);
insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Headset', 200.00, 25, 3);

select * from Tabprodutos;


insert into Tabvendedores (nome,percentual_ganho,data_adm) values ("cleiton",5,"2026-01-21" );
insert into Tabvendedores (nome,percentual_ganho,data_adm) values ("everton",11, "2026-02-11");
insert into Tabvendedores (nome,percentual_ganho,data_adm) values ("nathan",12,"2026-02-21");
insert into Tabvendedores (nome,percentual_ganho,data_adm) values ("ramon",25,"2026-02-23");
insert into Tabvendedores (nome,percentual_ganho,data_adm) values ("julia",43,"2026-01-21");

select * from Tabvendedores;

insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-01', 1, 1, 150.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-02', 2, 2, 800.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-03', 3, 1, 300.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-04', 4, 3, 2500.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-05', 5, 2, 450.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-06', 6, 4, 120.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-07', 7, 5, 600.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-08', 8, 3, 200.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-09', 9, 1, 900.00);
insert into Tabpedidos (data,codcliente,codvendedor,total) values ('2026-02-10', 10, 4, 3500.00);

select * from Tabpedidos;


update Tabprodutos
set preco = preco * 1.10
where cod_categoria = 1;

update Tabcliente
set Email = 'novoemail@email.com'
where codcliente = 3;

update Tabprodutos
set estoque = 0
where codprodutos = 5;

delete from Tabpedidos
where codpedidos = 4;

delete from Tabprodutos
where preco < 1.00;

alter table Tabvendedores
add cpf int not null;

update Tabcliente
set Cidade = 'Muriae-MG'
where Cidade = 'Muriae';

select * from Tabcategorias;

insert into Tabprodutos (nome, preco, estoque, cod_categoria) values ('Notebook Gamer', 5000.00, 5, 1);

delete from Tabvendedores
where codvendedores = 3;

alter table Tabpedidos
add observacao varchar(40);

create temporary table fornecedores_teste (
id int not null auto_increment,
nome varchar(100),
telefone varchar(20),
primary key (id)
);

drop table fornecedores_teste;

update Tabcategorias
set nome = 'Componentes Internos'
where nome = 'Hardware';

INSERT INTO Tabcliente (Nome, Email, Cidade, Data_cadastro) VALUES ('Ana Tech', 'anatech@email.com', 'Muriae-MG', CURDATE());

update Tabvendedores 
set percentual_ganho = 15.0;

delete from Tabcliente
where email is null or email= '';

alter table Tabpedidos
modify total decimal(15,2);

INSERT INTO Tabpedidos (data, codcliente, codvendedor, total) VALUES (CURDATE(),1,(SELECT MAX(codvendedor) FROM Tabvendedores),1000.00
);
select nome,preco from Tabprodutos;

SELECT p.*, c.Nome
FROM Tabpedidos p
INNER JOIN Tabcliente c ON p.codcliente = c.codcliente
WHERE c.Nome LIKE 'M%';

select * from Tabpedidos
where data between '2026-01-01' and '2026-02-15';

select * from Tabprodutos
order by preco ASC;

select * from Tabprodutos
where estoque <5 and preco > 500;

select * from clientes;

select COUNT(*) AS total_clientes from Tabcliente;

select sum(total) as total_vendas from Tabpedidos;

select avg(preco) as media_preco from Tabprodutos;

select nome as nome_item, preco as preco_venda from Tabprodutos;

select cidade, count(*) as quantidade from Tabcliente group by cidade;

select p.nome as produto, c.nome as categorias from Tabprodutos p inner join Tabcategorias c on p.cod_categoria = c.codcategorias;

select p.codpedidos, c.Nome from Tabpedidos p inner join Tabcliente c on p.codcliente = c.codcliente;

describe Tabpedidos;
describe Tabvendedores;

SELECT v.nome, SUM(p.total) AS total_vendido
FROM Tabpedidos p
INNER JOIN Tabvendedores v
ON p.codvendedor = v.codvendedores
GROUP BY v.nome;

select * from Tabcliente
where email LIKE '%@outlook.com';

SELECT c.Nome,
       COUNT(p.codprodutos) AS total_produtos
FROM Tabcategorias c
LEFT JOIN Tabprodutos p
ON c.codcategorias = p.cod_categoria
GROUP BY c.codcategorias, c.Nome;

select v.Nome, sum(p.total) as faturamento from Tabvendedores v left join Tabpedidos p on v.codvendedores group by v.Nome;

select c.Nome as cliente,p.data as data_pedido,v.Nome as vendedor from Tabpedidos p inner join Tabcliente c on p.codcliente = c.codcliente inner join Tabvendedores v on p.codvendedor = v.codvendedores;

select * from Tabvendedores
order by Data_adm ASC;

select * from Tabprodutos
where cod_categoria <> 1;

select *from Tabvendedores
where percentual_ganho between 10 and 20;

select AVG(total) as Media_Faturamento
from Tabpedidos;

select distinct Cidade
from Tabcliente;

select p.* from Tabpedidos p
inner join Tabvendedores v
on p.codvendedor = v.codvendedores
where v.codvendedores = 3;

select SUM(preco * estoque) as Total_Investido
from Tabprodutos;

select Cidade, COUNT(*) as total_clientes
from Tabcliente
group by Cidade
order by total_clientes DESC;

select * from Tabpedidos
where data between '2026-02-01' and '2026-02-28'
and total > 1000;

select p.* from Tabpedidos p
inner join Tabcliente c
on p.codcliente = c.codcliente
where c.Nome LIKE '%S/A%';

SELECT 
    Tabcliente.Nome AS Cliente,
    Tabprodutos.Nome AS Produto,
	Tabprodutos.Preco AS Valor_Produto,
    Tabvendedores.Nome AS Vendedor
FROM Tabpedidos
INNER JOIN Tabcliente 
    ON Tabpedidos.codcliente = Tabcliente.codcliente
INNER JOIN Tabvendedores 
    ON Tabpedidos.codvendedor = Tabvendedores.codvendedor
INNER JOIN Tabprodutos 
   ON Tabpedidos.codprodutos = Tabprodutos.codprodutos;
   
   show tables;
   describe tabcliente;