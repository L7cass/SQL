CREATE DATABASE AtividadeSqlAgenda;

create table Agenda (
nome varchar(50),
telefone varchar(50),
endereço varchar(50)
);

INSERT INTO agenda values ("Lucas","(61)99373-5678","Rua A, 1"),
("maria","(61)99567-7465","Rua B, 21"),
("joao","(61)8374-4478","Rua D, 13"),
("artur","(61)98374-5678","Rua C, 34"),
("julia","(61)98746-5645","Rua A, 8"),
("leonardo","(61)98453-5678","Rua D, 18"),
("caio","(61)99373-7348","Rua A, 53"),
("diogo","(61)99239-5678","Rua B, 18"),
("amanda","(61)99334-7298","Rua C 25"),
("luana","(61)99467-4658","Rua A, 17");

select * from Agenda;

select count(*) as "contador de cadastro" from Agenda;

select concat(nome , " seu numero de telefone é ",telefone, " e mora ", endereço) as "informação"from Agenda;



