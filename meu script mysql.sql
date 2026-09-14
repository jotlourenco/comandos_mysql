/* 
	BANCO DE DADOS
    
    Principais comandos do MySQL


*/

# CREATE DATABASE - Cria um novo banco de dados.

CREATE DATABASE loja_informatica;


# USE - Seleciona o Banco de Dados que será usado

USE loja_informatica;


# CREATE TABLE - Cria uma tabela dentro do Banco de Dados

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10 , 2 ),
    estoque INT
);


# ALTER TABLE - Permite alterar a estrutura de uma tabela. Por exemplo, podemos adicionar uma nova coluna.

ALTER TABLE produtos ADD telefone VARCHAR(20);


# Ou remover uma coluna existente.

ALTER TABLE produtos
DROP telefone;


# INSERT INTO - Utilizado para inserir novos registros.

INSERT INTO produtos
(nome, categoria, preco, estoque)
VALUES
('Teclado', 'Periférico', 89.90, 20),
('Mouse', 'Periférico', 30.90, 20);


# UPDATE - Utilizado para alterar registros existentes.

UPDATE produtos 
SET 
    preco = 99.90
WHERE
    id = 1;


# SELECT - O comando fundamental para realizar consultas.

SELECT  * FROM  produtos;


# Também podemos escolher quais colunas queremos visualizar:

SELECT 
    nome, preco
FROM
    produtos;


# SHOIW DATABASES - Comando específico do MySQL que apresenta os bancos de dados existentes no servidor.

SHOW DATABASES;


# SHOW TABLES - Apresenta as tabelas existentes no banco selecionado.

SHOW TABLES;


# DESCRIBE - Apresenta a estrutura de uma tabela.

DESCRIBE produtos;


# DISTINCT - Elimina valores repetidos do resultado.

SELECT DISTINCT
    categoria
FROM
    produtos;
    
    
# WHERE - Permite estabelecer uma condição para a consulta.

SELECT 
    *
FROM
    produtos
WHERE
    preco > 500;


# BETWEEN - Pesquisa valores dentro de um intervalo.

SELECT 
    *
FROM
    produtos
WHERE
    preco BETWEEN 100 AND 500;
    
    
# LIKE - Permite realizar pesquisas utilizando padrões de texto.

SELECT 
    *
FROM
    produtos
WHERE
    nome LIKE 'M%';
    
    
# IN - Permite pesquisar um valor dentro de uma lista de possibilidades.

SELECT 
    *
FROM
    produtos
WHERE
    nome IN ('Teclado' , 'Monitor');
    
    
# AND - Combina condições que precisam ser verdadeiras ao mesmo tempo.

SELECT 
    *
FROM
    produtos
WHERE
    preco > 100 AND estoque > 10;


# OR - Permite trabalhar com condições alternativas.

SELECT 
    *
FROM
    produtos
WHERE
    categoria = 'Periférico'
        OR categoria = 'Monitor';


# IS NULL - Permite localizar campos que não possuem valor.

SELECT *
FROM produtos
WHERE nome IS NULL;


# IS NOT NULL - Para localizar registros preenchidos:

SELECT *
FROM produtos
WHERE nome IS NOT NULL;


# LIMIT - Limita a quantidade de registros apresentados.

SELECT *
FROM produtos
LIMIT 3;

# AS - Permite criar um nome alternativo para uma coluna no resultado.

SELECT COUNT(*) AS quantidade
FROM produtos;


# Populando a tabela 

INSERT INTO produtos
(nome, categoria, preco, estoque)
VALUES
('Teclado', 'Periférico', 89.90, 20),
('Mouse', 'Periférico', 49.90, 35),
('Monitor', 'Hardware', 799.90, 10),
('Notebook', 'Computador', 3299.90, 8),
('Impressora', 'Periférico', 649.90, 12),
('Webcam', 'Periférico', 159.90, 18),
('Headset', 'Áudio', 129.90, 25),
('Caixa de Som', 'Áudio', 99.90, 15),
('Pen Drive', 'Armazenamento', 39.90, 40),
('HD Externo', 'Armazenamento', 399.90, 7),
('SSD', 'Armazenamento', 299.90, 14),
('Cabo HDMI', 'Acessório', 29.90, 50),
('Adaptador USB', 'Acessório', 24.90, 30),
('Roteador', 'Rede', 189.90, 16),
('Switch', 'Rede', 249.90, 9);


# SUM - Soma valores de uma coluna.

SELECT SUM(estoque) AS estoque_total
FROM produtos;
 
# AVG - Calcula a média dos valores.

SELECT AVG(preco) AS preco_medio
FROM produtos;

# MAX - Retorna o maior valor.

SELECT MAX(preco) AS maior_preco
FROM produtos;


# MIN -  Retorna o menor valor.

SELECT MIN(preco) AS menor_preco
FROM produtos;
