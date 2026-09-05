-- create
CREATE TABLE alunos (  -- criando tabela--
  id_alunos INTEGER PRIMARY KEY auto_increment, -- criando campo Id_alunos, inteiro, auto_increment pra preencher automaticamente--
  nome varchar(50) NOT NULL, -- criando campo nome, var char para tamanho variável, not null obrigatório preencher--
  curso varchar (50) NOT NULL, -- criando campo curso, var char para tamanho variável, not null obrigatório preencher--
  nota decimal (4,2) -- criando campo nota, decimal indica ser um número decimal--
);

INSERT INTO alunos (nome, curso, nota) -- Inserindo na tabela alunos colunas nome curso e nota
VALUES ('Marcos', 'Ciência da Computação', 8.5); -- Atribuindo os valores das colunas nome, curso e nota

SELECT * from alunos WHERE nome = 'Marcos'; -- Selecionando da tabela alunos na coluna nome apenas Marcos

