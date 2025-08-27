use Exercicios1

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade_cliente VARCHAR(50),
    estado_cliente CHAR(2)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10,2)
);


CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    forma_pagamento VARCHAR(50),
    status_pedido VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario_item DECIMAL(10,2),
    valor_total_item DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
INSERT INTO clientes (id_cliente, nome, email, cidade_cliente, estado_cliente) VALUES
(1, 'Maria Silva', 'maria.silva@email.com', 'São Paulo', 'SP'),
(2, 'João Souza', 'joao.souza@email.com', 'Rio de Janeiro', 'RJ'),
(3, 'Ana Lima', 'ana.lima@email.com', 'Belo Horizonte', 'MG'),
(4, 'Carlos Pereira', 'carlos.pereira@email.com', 'Porto Alegre', 'RS'),
(5, 'Fernanda Santos', 'fernanda.santos@email.com', 'Curitiba', 'PR'),
(6, 'Ricardo Gomes', 'ricardo.gomes@email.com', 'Brasília', 'DF'),
(7, 'Patrícia Alves', 'patricia.alves@email.com', 'Salvador', 'BA'),
(8, 'Marcos Oliveira', 'marcos.oliveira@email.com', 'Fortaleza', 'CE'),
(9, 'Juliana Costa', 'juliana.costa@email.com', 'Manaus', 'AM'),
(10, 'André Rocha', 'andre.rocha@email.com', 'Florianópolis', 'SC'),
(11, 'Sabrina Mendes', 'sabrina.mendes@email.com', 'Recife', 'PE'),
(12, 'Felipe Cardoso', 'felipe.cardoso@email.com', 'Goiânia', 'GO'),
(13, 'Vanessa Martins', 'vanessa.martins@email.com', 'Natal', 'RN'),
(14, 'Lucas Ferreira', 'lucas.ferreira@email.com', 'Belém', 'PA'),
(15, 'Thiago Nunes', 'thiago.nunes@email.com', 'João Pessoa', 'PB'),
(16, 'Aline Ribeiro', 'aline.ribeiro@email.com', 'Campo Grande', 'MS'),
(17, 'Daniel Barbosa', 'daniel.barbosa@email.com', 'Maceió', 'AL'),
(18, 'Larissa Lima', 'larissa.lima@email.com', 'Vitória', 'ES'),
(19, 'Eduardo Teixeira', 'eduardo.teixeira@email.com', 'Aracaju', 'SE'),
(20, 'Bruna Farias', 'bruna.farias@email.com', 'Teresina', 'PI');


INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES
(101, 'Notebook Dell', 'Eletrônicos', 3500.00),
(102, 'Smartphone Samsung', 'Eletrônicos', 2500.00),
(103, 'Camiseta Nike', 'Roupas', 120.00),
(104, 'Sofá 3 Lugares', 'Casa', 1500.00),
(105, 'Bicicleta Aro 29', 'Esportes', 1800.00),
(106, 'Fone Bluetooth JBL', 'Eletrônicos', 300.00),
(107, 'Geladeira Brastemp', 'Eletrodomésticos', 2800.00),
(108, 'Liquidificador Arno', 'Eletrodomésticos', 200.00),
(109, 'Tênis Adidas', 'Roupas', 350.00),
(110, 'Mesa de Jantar 6 Lugares', 'Casa', 2200.00),
(111, 'Relógio Casio', 'Acessórios', 450.00),
(112, 'Mochila Samsonite', 'Acessórios', 400.00),
(113, 'Colchão Ortobom', 'Casa', 1200.00),
(114, 'Raquete de Tênis Wilson', 'Esportes', 600.00),
(115, 'Câmera Canon', 'Eletrônicos', 4200.00);

INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, forma_pagamento, status_pedido) VALUES
(1001, 1, '2025-08-01', 'Cartão de Crédito', 'Pago'),
(1002, 2, '2025-08-02', 'Pix', 'Pago'),
(1003, 3, '2025-08-03', 'Boleto', 'Pendente'),
(1004, 4, '2025-08-04', 'PayPal', 'Enviado'),
(1005, 5, '2025-08-05', 'Cartão de Crédito', 'Pago'),
(1006, 6, '2025-08-06', 'Pix', 'Pago'),
(1007, 7, '2025-08-07', 'Boleto', 'Pago'),
(1008, 8, '2025-08-08', 'Cartão de Crédito', 'Enviado'),
(1009, 9, '2025-08-09', 'PayPal', 'Pago'),
(1010, 10, '2025-08-10', 'Pix', 'Cancelado'),
(1011, 11, '2025-08-11', 'Cartão de Crédito', 'Pago'),
(1012, 12, '2025-08-12', 'Boleto', 'Pago'),
(1013, 13, '2025-08-13', 'Pix', 'Pago'),
(1014, 14, '2025-08-14', 'Cartão de Crédito', 'Enviado'),
(1015, 15, '2025-08-15', 'PayPal', 'Pago'),
(1016, 16, '2025-08-16', 'Pix', 'Pago'),
(1017, 17, '2025-08-17', 'Boleto', 'Pago'),
(1018, 18, '2025-08-18', 'Cartão de Crédito', 'Pago'),
(1019, 19, '2025-08-19', 'Pix', 'Enviado'),
(1020, 20, '2025-08-20', 'PayPal', 'Pago'),
(1021, 1, '2025-08-21', 'Pix', 'Pago'),
(1022, 2, '2025-08-22', 'Boleto', 'Cancelado'),
(1023, 3, '2025-08-23', 'Cartão de Crédito', 'Pago'),
(1024, 4, '2025-08-24', 'Pix', 'Pago'),
(1025, 5, '2025-08-25', 'PayPal', 'Pago'),
(1026, 6, '2025-08-26', 'Boleto', 'Pago'),
(1027, 7, '2025-08-27', 'Cartão de Crédito', 'Pago'),
(1028, 8, '2025-08-28', 'Pix', 'Enviado'),
(1029, 9, '2025-08-29', 'PayPal', 'Pago'),
(1030, 10, '2025-08-30', 'Cartão de Crédito', 'Pago');

INSERT INTO itens_pedido (id_item, id_pedido, id_produto, quantidade, preco_unitario_item, valor_total_item) VALUES
(1, 1001, 101, 1, 3500.00, 3500.00),
(2, 1001, 103, 2, 120.00, 240.00),
(3, 1002, 102, 1, 2500.00, 2500.00),
(4, 1002, 105, 1, 1800.00, 1800.00),
(5, 1003, 104, 1, 1500.00, 1500.00),
(6, 1004, 105, 2, 1800.00, 3600.00),
(7, 1005, 103, 3, 120.00, 360.00),
(8, 1006, 106, 2, 300.00, 600.00),
(9, 1007, 107, 1, 2800.00, 2800.00),
(10, 1008, 108, 3, 200.00, 600.00),
(11, 1009, 109, 1, 350.00, 350.00),
(12, 1010, 110, 1, 2200.00, 2200.00),
(13, 1011, 111, 2, 450.00, 900.00),
(14, 1012, 112, 1, 400.00, 400.00),
(15, 1013, 113, 2, 1200.00, 2400.00),
(16, 1014, 114, 1, 600.00, 600.00),
(17, 1015, 115, 1, 4200.00, 4200.00),
(18, 1016, 101, 1, 3500.00, 3500.00),
(19, 1017, 102, 2, 2500.00, 5000.00),
(20, 1018, 103, 4, 120.00, 480.00),
(21, 1019, 104, 1, 1500.00, 1500.00),
(22, 1020, 105, 2, 1800.00, 3600.00),
(23, 1021, 106, 3, 300.00, 900.00),
(24, 1022, 107, 1, 2800.00, 2800.00),
(25, 1023, 108, 4, 200.00, 800.00),
(26, 1024, 109, 2, 350.00, 700.00),
(27, 1025, 110, 1, 2200.00, 2200.00),
(28, 1026, 111, 1, 450.00, 450.00),
(29, 1027, 112, 2, 400.00, 800.00),
(30, 1028, 113, 3, 1200.00, 3600.00),
(31, 1029, 114, 1, 600.00, 600.00),
(32, 1030, 115, 1, 4200.00, 4200.00),
(33, 1006, 101, 1, 3500.00, 3500.00),
(34, 1007, 103, 2, 120.00, 240.00),
(35, 1008, 105, 1, 1800.00, 1800.00),
(36, 1009, 102, 1, 2500.00, 2500.00),
(37, 1010, 104, 2, 1500.00, 3000.00),
(38, 1011, 106, 1, 300.00, 300.00),
(39, 1012, 107, 1, 2800.00, 2800.00),
(40, 1013, 108, 1, 200.00, 200.00),
(41, 1014, 109, 1, 350.00, 350.00),
(42, 1015, 110, 1, 2200.00, 2200.00),
(43, 1016, 111, 2, 450.00, 900.00),
(44, 1017, 112, 2, 400.00, 800.00),
(45, 1018, 113, 1, 1200.00, 1200.00),
(46, 1019, 114, 2, 600.00, 1200.00),
(47, 1020, 115, 1, 4200.00, 4200.00),
(48, 1021, 101, 1, 3500.00, 3500.00),
(49, 1022, 102, 1, 2500.00, 2500.00),
(50, 1023, 103, 1, 120.00, 120.00),
(51, 1024, 104, 1, 1500.00, 1500.00),
(52, 1025, 105, 1, 1800.00, 1800.00),
(53, 1026, 106, 1, 300.00, 300.00),
(54, 1027, 107, 1, 2800.00, 2800.00),
(55, 1028, 108, 2, 200.00, 400.00),
(56, 1029, 109, 2, 350.00, 700.00),
(57, 1030, 110, 2, 2200.00, 4400.00),
(58, 1001, 111, 1, 450.00, 450.00),
(59, 1002, 112, 1, 400.00, 400.00),
(60, 1003, 113, 2, 1200.00, 2400.00);

select * from clientes
select * from produtos
select * from pedidos
select * from itens_pedido



--tipo de pagamento mais populares 
select p.forma_pagamento ,
      sum(i.quantidade) as Vendas
from
	itens_pedido as I
JOIN
	pedidos as P
ON
	p.id_pedido = i.id_pedido
GROUP BY
	p.forma_pagamento
ORDER BY
	Vendas DESC

--Clientes pagos
SELECT COUNT(*) AS total_pedidos_pagos
FROM 
	pedidos as P
WHERE p.status_pedido = 'Pago';

--Clientes Pendentes
SELECT COUNT(*) AS total_pedidos_Pendentes
FROM 
	pedidos as P
WHERE p.status_pedido = 'Pendente';

--Clientes Cancelados
SELECT COUNT(*) AS total_pedidos_Cancelados
FROM 
	pedidos as P
WHERE p.status_pedido = 'Cancelado';

--Faturamento Total
select sum(I.valor_total_item) as FaturamentoTotal
from
	itens_pedido as I
JOIN
	pedidos as P
ON
	P.id_pedido = I.id_pedido
where  
	p.status_pedido = 'Pago'

--Ticket médio
select 
	SUM(I.valor_total_item) / COUNT(DISTINCT P.id_pedido) AS TicketMedio   
from
	itens_pedido as I
JOIN
	pedidos as P
ON
	P.id_pedido = I.id_pedido
where  
	p.status_pedido = 'Pago'

--Categorias que mais Faturaram
select p.categoria,
       sum(i.valor_total_item) as FaturamentoTotal
from
	produtos as P
JOIN
	itens_pedido as I
On
	i.id_produto = p.id_produto
JOIN
	pedidos as Pd
on
	pd.id_pedido = i.id_pedido
where pd.status_pedido = 'Pago'
Group by
	p.categoria
ORDER BY
	FaturamentoTotal DESC

--Faturamento por Produto
select p.nome_produto,
       sum(i.valor_total_item) as FaturamentoTotal
from
	produtos as P
JOIN
	itens_pedido as I
On
	i.id_produto = p.id_produto
JOIN
	pedidos as Pd
on
	pd.id_pedido = i.id_pedido
where pd.status_pedido = 'Pago'
Group by
	p.nome_produto
ORDER BY
	FaturamentoTotal DESC

--Faturamento por Data
select data_pedido,
	   sum(I.valor_total_item) as FaturamentoTotal
from
	pedidos as P
JOIN
	itens_pedido as i
ON
	I.id_pedido = P.id_pedido
WHERE P.status_pedido = 'Pago'
Group By
	data_pedido
ORDER BY
	data_pedido ASC
