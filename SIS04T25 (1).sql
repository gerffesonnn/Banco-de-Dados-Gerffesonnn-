USE SIS04T25;
-- Inserindo um Cliente
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Ana Silva', 'Ana', 'Rua das Flores, 123', 'Belo Horizonte', '30110-000', 'Brazil'),
('Carlos Pereira', 'Carlos', 'Av. Paulista, 1500', 'São Paulo', '01310-200', 'Brazil'),
('Marta Souza', 'Marta', 'Rua da Praia, 45', 'Porto Alegre', '90010-001', 'Brazil'),
('Livraria do Saber', 'Beatriz Rocha', 'Av. Sete de Setembro, 12', 'Curitiba', '80010-000', 'Brazil'),
('Padaria Pão de Mel', 'Seu Manuel', 'Rua das Camélias, 88', 'Rio de Janeiro', '20510-060', 'Brazil'),
('Oficina do PC', 'Ricardo Lima', 'Rua Amazonas, 1001', 'São Caetano do Sul', '09520-000', 'Brazil'),
('Consultoria Alpha', 'Julia Mendes', 'Av. Rio Branco, 500', 'Rio de Janeiro', '20040-002', 'Brazil'),
('Supermercado Extraordinário', 'Fernando Silva', 'Praça da Matriz, 5', 'Recife', '50010-000', 'Brazil'),
('Design & Arte', 'Helena Troia', 'Rua da Aurora, 15', 'Florianópolis', '88010-000', 'Brazil'),
('Auto Peças Veloz', 'Wagner Antunes', 'Av. das Nações, 2500', 'Brasília', '70000-000', 'Brazil');

-- Inserindo Fornecedores Adicionais
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES 
('Importadora Global', 'Sr. Tanaka', 'Chuo City, 4-1', 'Tokyo', '104-0061', 'Japan', '+81 3-1234-5678'),
('Distribuidora Nordeste', 'Maria das Dores', 'Av. Recife, 1200', 'Recife', '50710-000', 'Brazil', '(81) 3444-5555'),
('Euro Parts Store', 'Hans Müller', 'Alexanderplatz, 1', 'Berlin', '10178', 'Germany', '+49 30 9876543'),
('Vale do Silício Br', 'Lucas Almeida', 'Rua dos Inconfidentes, 80', 'Belo Horizonte', '30140-120', 'Brazil', '(31) 3222-1111'),
('Amazonas Logística', 'Iara Silveira', 'Av. Constantino Nery, 500', 'Manaus', '69005-000', 'Brazil', '(92) 3666-0000'),
('Pacific Tech', 'Jennifer Chen', 'Market St, 101', 'San Francisco', '94105', 'USA', '+1 415-555-0199'),
('Sul Suprimentos', 'Ricardo Koch', 'Rua da Várzea, 300', 'Porto Alegre', '91000-000', 'Brazil', '(51) 3333-8888');


--- 1. NOVAS CATEGORIAS

INSERT INTO Categories (CategoryName, Description)
VALUES 
('Móveis Office', 'Cadeiras, mesas e suportes ergonômicos'),
('Softwares', 'Licenças de sistemas operacionais e produtividade'),
('Redes', 'Roteadores, switches e cabos de rede');


--- 2. NOVOS PRODUTOS (Vinculados aos Suppliers e Categories anteriores)

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES 
('Cadeira Gamer RGB', 4, 3, 'Unidade', 1200.00),
('Windows 11 Pro', 6, 4, 'Licença Digital', 850.00),
('Roteador Wi-Fi 6', 3, 5, 'Unidade', 450.00),
('Cabo HDMI 2.1', 2, 2, 'Metros', 45.00),
('Switch 24 Portas', 3, 5, 'Unidade', 1100.00),
('Monitor 4K 27"', 7, 1, 'Unidade', 2100.00);


--- 3. NOVOS FUNCIONÁRIOS

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES 
('Costa', 'Roberta', '1990-03-12', 'roberta.jpg', 'Especialista em Logística'),
('Santos', 'André', '1988-11-30', 'andre.jpg', 'Vendas Corporativas - B2B'),
('Mendes', 'Carla', '1995-07-22', 'carla.jpg', 'Suporte Técnico e Vendas');


--- 4. NOVAS TRANSPORTADORAS

INSERT INTO Shippers (ShipperName, Phone)
VALUES 
('Jato Express', '(11) 92222-1111'),
('Carga Pesada S.A.', '(21) 3344-5566');


--- 5. NOVOS PEDIDOS (Orders)
--- Vinculando Clientes (3 a 6), Funcionários (2 e 3) e Shippers (2 e 3)

INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES 
(3, 3, '2023-11-10', 2), -- Pedido da Marta com a Carla
(4, 2, '2023-11-12', 3), -- Pedido da Oficina do PC com o André
(5, 4, '2023-11-15', 1), -- Pedido da Consultoria Alpha com a Roberta
(6, 2, '2023-11-18', 2); -- Pedido do Supermercado com o André

--- 6. DETALHES DOS PEDIDOS (OrderDetails)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES 
-- Itens do Pedido 4
(4, 5, 2), -- 2 Roteadores Wi-Fi
(4, 7, 10), -- 10 Cabos HDMI
-- Itens do Pedido 5
(5, 4, 1), -- 1 Cadeira Gamer
(5, 9, 2), -- 2 Monitores 4K
-- Itens do Pedido 6
(6, 6, 5), -- 5 Licenças Windows 11
-- Itens do Pedido 7
(7, 8, 1); -- 1 Switch 24 Portas
