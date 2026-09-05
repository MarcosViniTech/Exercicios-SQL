-- 1. Tabela de Clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 2. Tabela de Produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

-- 3. Tabela de Pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- INSERÇÕES 
INSERT INTO clientes (nome, email)
VALUES ('Hebert', 'hebert@email.com');

INSERT INTO produtos (nome_produto, preco)
VALUES ('Suco de Caixa', 7.00);

INSERT INTO produtos (nome_produto, preco)
VALUES ('Arroz', 7.00);

INSERT INTO pedidos (id_cliente, id_produto, data_pedido)
VALUES (1, 1, '2026-08-28');

-- CONSULTAS
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;

-- RELATÓRIO COM JOIN
SELECT 
    clientes.nome, 
    produtos.nome_produto, 
    produtos.preco, 
    pedidos.data_pedido
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id
JOIN produtos ON pedidos.id_produto = produtos.id;