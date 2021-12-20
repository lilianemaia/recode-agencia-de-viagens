CREATE DATABASE Recode;

use Recode

CREATE SCHEMA agencia;

CREATE TABLE agencia.Destino(
	IdDestino int PRIMARY KEY,
	NomeDoDestino VARCHAR(100) NOT NULL,
	Cidade VARCHAR (50) NOT NULL,
	Estado VARCHAR (2) NOT NULL,
	Descricao VARCHAR (1000) NOT NULL
);

INSERT INTO agencia.Destino(IdDestino, NomeDoDestino, Cidade, Estado, Descricao)
VALUES (001, 'Jericoacoara', 'Jijoca de Jericoacoara', 'CE', 'Viva as belezas da Lagoa do Paraiso e da Pedra Furada'),
	   (002, 'Pelourinho e Farol da Barra', 'Salvador', 'BA', 'Conheça as belezas do Pelourinho e do Farol da Barra'),
	   (003, 'Cristo Redentor e Pão de Açúcar', 'Rio de Janeiro', 'RJ', 'Conheça a vista maravilhosa do Cristo Redentor e do Pão de Açúcar');

-- INSERT INTO agencia.Destino(IdDestino, NomeDoDestino, Cidade, Estado, Descricao) VALUES(002, 'Paraiso Jeri', 'Jericoacoara', 'CE', 'Lagoa do Paraiso e Pedra Furada');

SELECT * FROM agencia.Destino;

CREATE TABLE agencia.Pacote(
	idPacote INT PRIMARY KEY,
	NomeDoPacote VARCHAR(50) NOT NULL,
	Destino int FOREIGN KEY REFERENCES agencia.Destino(IdDestino),
	Duracao INT,
	Promo BIT,
	Preco DECIMAL (8)
);


INSERT INTO agencia.Pacote(idPacote, NomeDoPacote, Destino, Duracao, Promo, Preco)
VALUES (001, 'Paraiso Jeri', 001, 10, 1, 1450.00),
	   (002, 'Vou ali em Salvador', 002, 5, 1, 1390.00),
	   (003, 'Rio cidade maravilhosa', 003, 4, 1, 1390.00);

SELECT * FROM agencia.Pacote as Pacote, agencia.Destino as Destino where Pacote.idPacote = Destino.IdDestino;


SELECT * FROM agencia.Pacote;

DROP TABLE agencia.Destino;
DROP TABLE agencia.Pacote;
DROP SCHEMA agencia;

use CrudNaMonitoria;
DROP DATABASE Recode;