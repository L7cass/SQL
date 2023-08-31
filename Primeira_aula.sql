CREATE DATABASE primeiro_banco_de_dados;

use primeiro_banco_de_dados;

create table pessoa(
nome varchar(50),
idade int,
altura double,
genero varchar(1)
);

show tables;

desc pessoa;

insert into pessoa values("lucas", 17, 1.75,"M");
insert into pessoa(nome, idade) values("Luis, 20");
insert into pessoa values("jose", "69", " 1.54", "M"),
("vanessa", "32", "1.67","F");

select * from pessoa;

#Varchar = caracteres variantes 
#char = tamanho fixo 
#binary = numeros binarios
#bloob = salvar imagens 
#longtext = textos longos a partir de 255 caracteres
#4,294,967,795 numero maximo de cxaracteres
#enum = dados pre-definidos

create table pedido(
nome_produto varchar(50),
quantidade integer,
preco double,
status enum ("preparando","a caminho","Entregue", "cancelado")
); 

insert into pedido values("coxinha",10, 3.516325, "preparando");
insert into pedido values("pipoca gourmet", 10, 30.50 ,2);

select * from pedido;

#drop table pedido;
select nome, idade from pessoa;


select(3*2);

select nome , idade from pessoa where genero = "M";
select idade from pessoa where nome = "Luan";

insert into pessoa values("idade", "nome");
select nome, idade from pessoa where nome = "Maria";
select nome, idade from pessoa where nome like "%Maria%";

# inserir 10 dados na tabela de cliente
#nome, idade , cpf, endereço, telefone;

create table cadastro(
nome varchar(50),
idade int,
 cpf int,
endereço varchar(50),
telefone varchar(50)
);


INSERT INTO cadastro VALUES ('joão',25,123456789-00,'Rua A, 123', '(61)99435-1278'),
('caio',36, 123128389-00,'Rua D, 13', '(61)93827-1328'),
('rodrigo',75,123427369-02,'Rua A, 10', '(61)92384-2837'),
('julia',22,123247564-04,'Rua C, 12', '(61)99283-2219'),
('maria',21,192837498-05,'Rua B, 23', '(61)92934-2390'),
('arthur',45,328732748-05,'Rua A, 34', '(61)99348-6464'),
('luana',20,293847192-01,'Rua D, 127', '(61)99745-3747'),
('lucas',23,938476535-02,'Rua C, 12', '(61)99029-1388'),
('leonardo',15,192837462-04,'Rua A, 23', '(61)99394-3458'),
('igor',22,092837465-01,'Rua B, 13', '(61)99283-1209');

INSERT INTO cadastro VALUES('eduarda',null,938476535-02,'Rua D, 12', '(61)99329-1388'),
('ana',23,935347635-02,null, '(61)99029-1455'),
('igor',22,092837465-01,null,'(61)99283-1209'),
('tiago',23,938676543-02,'Rua C, 16', null);

select nome, telefone from cadastro where idade > 30 and cpf like "%123%";
select nome, telefone from cadastro where idade > 30 or cpf like "%123%";

#as = alias, mostre o dado como
select count(*) as "contador de cadastro" from cadastro;

select count (telefone), nome from cadastro group by nome;

select nome from cadastro where telefone is null;

update cadastro set telefone = "(61)99867-1305";

update cadastro set telefone = '(61)99867-1305' where nome = "tiago";

set sql_safe_updates = 0;

create table errada(
nome varchar(50),
altura double ,
pezo double
);

select * from errada;

alter table errada add cpf varchar(20);

desc errada;

alter table errada drop column altura;

alter table errada rename column pezo to peso;

alter table errada modify column peso double not null;

insert into errada values ("Lucas","50.47","1234567891");

alter table errada modify column peso double not null first;

alter table errada modify column peso double not null after nome;

select concat(nome , " pesa",peso, " e seu cpf é ", cpf) as "informação"from errada;

delete from cadastro where nome = "joao";

