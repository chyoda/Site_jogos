 use projeto_SA;

create table login(
	id int not null auto_increment,
    email varchar(100) not null,
    senha varchar(8) not null,
    primary key (id)
);

insert into login(email,senha) 
values("carloshenrique6110@gmail.com","marlos24");

create table test_solicitacoes(
	cod int auto_increment not null,
    nome varchar(60) not null,
    telefone varchar(20) not null,
    endereço varchar (50) not null,
    estado varchar(20),
    cidade varchar(10) not null,	
    bairro varchar(50) not null,
	zona enum("Urbana","Rural") not null,
    empregados int not null,
    moradores int not null,
    tp_conta enum("doador", "receptor") not null,
    necessidade varchar(255),
    primary key (cod)
);

create table test_solicitacoes(
	cod int auto_increment not null,
    nome varchar(60) not null,
    telefone varchar(20) not null,
    endereço varchar (50) not null,
    estado varchar(20),
    cidade varchar(10) not null,	
    bairro varchar(50) not null,
	zona enum("Urbana","Rural") not null,
    empregados int not null,
    moradores int not null,
    tp_conta enum("doador", "receptor") not null,
    necessidade varchar(255),
    primary key (cod)
);

SELECT cod, nome, telefone, endereço, estado, cidade, bairro, zona, tp_conta, renda, necessidade,  DATE_FORMAT (`data`,
                    '%d/%m/%Y') AS data_formatada FROM test_solicitacoes WHERE tp_conta = 'receptor';

alter table test_solicitacoes add column renda varchar(50);
alter table test_solicitacoes add column `data` date;

SELECT cod, nome, telefone, endereço, estado, cidade, bairro, zona, tp_conta, necessidade,  DATE_FORMAT (`data`,
                    '%d/%m/%Y') AS data_formatada FROM test_solicitacoes WHERE tp_conta = 'receptor';


create table test_doacoes(
	cod int auto_increment not null,
    nome varchar(60) not null,
    email varchar(100) not null,
    telefone varchar(20) not null,
    endereço varchar (50) not null,
    estado varchar(20),
    cidade varchar(10) not null,	
    tp_conta enum("doador", "receptor") not null,
    tp_doacao enum("Alimento", "Dinheiro", "Roupa"),
    primary key (cod)
);

drop table test_solicitacoes;
