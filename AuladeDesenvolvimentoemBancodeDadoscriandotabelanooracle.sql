--create
CREATE TABLE editora (
 id_editora NUMBER(4) AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR2 (100) NOT NULL,
 cnpj CHAR(14) NOT NULL UNIQUE,
 ano INT check(ano>1400)
);