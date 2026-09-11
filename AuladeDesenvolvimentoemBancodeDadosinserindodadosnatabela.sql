-- create
CREATE TABLE Editora (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 cnpj CHAR(14) NOT NULL UNIQUE,
 ano INT NOT NULL check(ano>1400)
);

INSERT INTO editora (id, nome, cnpj,ano)
 values(1, 'Manole', '12456789000123', 1895);

SELECT * FROM editora;
