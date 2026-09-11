--create
CREATE TABLE editora (
 id_editora SERIAL PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 cnpj CHAR(14) NOT NULL UNIQUE,
 ano INT check(ano>1400)
)
