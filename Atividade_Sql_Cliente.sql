CREATE DATABASE AtividadeSqlClientes;

create table Cliente(
nome varchar(50),
idade int,
cpf int ,
email varchar (50),
Bairro varchar(100),
cidade varchar(100),
estado varchar(100),
telefone varchar(50)
);

INSERT INTO Cliente values("Caio Eduardo da Mata",43,618173840-15,"caieduardodamata@gruposimoes.com.br","Jardim Conceição","São Luís","MA","(98) 99754-4774"),
("Enrico Pietro Cláudio da Paz",80,102928375-34,"enrico_dapaz@osite.com.br","Conjunto Manoel Julião","Rio Branco","AC","(68) 98222-9008"),
("Nicolas Rafael Almeida",46,158158083-50,"nicolas_almeida@serteccontabil.com.br","Residencial Abussafe","Cambé","PR","(43) 99858-8780"),
("Larissa Clarice Brenda Gomes", 52,621386657-47,"larissa.clarice.gomes@plaman.com.br","Jardim Simões","São José do Rio Preto","SP",null), 
("Theo Rodrigo Heitor Pereira", 50,684837468-75,"theorodrigopereira@nine9.com.br","Caminho dos Lagos","Paulo Afonso","BA","(75) 99323-8471"),
("Levi Breno Fernandes", 59,737225038-25,"levi.breno.fernandes@pronursing.com.br","Esplanada","Teresina","PI","(86) 98388-0310"),
("Thiago Geraldo Marcelo Cardoso",43,652143886-75,"thiago_cardoso@comercialmendes.net","Vila Moreninha III","Campo Grande","MS","(67) 98167-8433"),
("Liz Antônia Melo", 62,495972229-06,null,"Jardim das Palmeiras","São Luís","MA","(98) 98305-2080"),
("Alessandra Liz Luna Moreira", 45,744703063-55,"alessandra_moreira@thewishes.com.br","Nucleo Habitacional São José I","Rondonópolis","MT","(66) 99385-2223"),
("Hadassa Sarah da Rosa", 51,084780199-36,"hadassa_darosa@comprehense.com.br","Centro Sul","Várzea Grande","MT","(65) 98555-9034"),
("Pietro Diego Nunes",27,027536213-22,null,"Centro","Jaboatão dos Guararapes","PE","(81) 3554-4315"),
("Isabel Fátima Sophia Assunção",28,245340902-69,"isabel-assuncao92@chavao.com.br","Cacimbas","Arapiraca","AL","(82) 98326-1710"),
("Maitê Sara Gonçalves",79,985503375-28,"maite-goncalves86@live.com.pt","Ivete Vargas","Rio Branco","AC","(68) 99951-7427"),
("Allana Elisa Ferreira",25,886144857-78,"allana.elisa.ferreira@grupogil.com.br","Centro","Itabuna","BA",null),
("Nicole Malu Cavalcanti",51,808419245-03,null,"Vila Planalto","Rondonópolis","MT","(66) 98366-4275");

select * from Cliente;

select nome from Cliente where email is null or telefone is null;

select nome from Cliente where email is null;

select nome from Cliente where telefone is null;


	


