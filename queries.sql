create table estudante(
  id_estudante number(4) primary key, 
  nome varchar2(50) not null,
  ra char(9) not null unique,
  data_nascimento date not null
);