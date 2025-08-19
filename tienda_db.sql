-- Insertar empleados
INSERT INTO employee (last_name, first_name, birth_date, hire_date, address, city, country, reports_to) VALUES
('García', 'Juan', '1985-05-15', '2020-01-15', 'Calle 123 #45-67', 'Bogotá', 'Colombia', NULL),
('López', 'María', '1990-08-22', '2021-03-10', 'Carrera 89 #12-34', 'Medellín', 'Colombia', 1),
('Rodríguez', 'Carlos', '1988-12-03', '2020-11-05', 'Avenida 56 #78-90', 'Cali', 'Colombia', 1),
('Martínez', 'Ana', '1992-04-18', '2022-02-20', 'Transversal 34 #56-78', 'Barranquilla', 'Colombia', 2);

-- Insertar clientes
INSERT INTO customer (contact_name, company_name, contact_email, address, city, country) VALUES
('Pedro Sánchez', 'Distribuidora ABC', 'pedro@abc.com', 'Calle 45 #23-67', 'Bogotá', 'Colombia'),
('Laura Gómez', 'Supermercados XYZ', 'laura@xyz.com', 'Carrera 78 #45-12', 'Medellín', 'Colombia'),
('Roberto Silva', 'Comercial 123', 'roberto@123.com', 'Avenida 89 #34-56', 'Cali', 'Colombia'),
('Carmen Torres', 'Tienda La Esquina', 'carmen@esquina.com', 'Calle 12 #67-89', 'Knoxville', 'Estados Unidos'),
('Miguel Herrera', 'Almacén Central', 'miguel@central.com', 'Carrera 56 #78-90', 'Stockton', 'Estados Unidos'),
('Sofia Vargas', 'Distribuciones Norte', 'sofia@norte.com', 'Transversal 23 #45-67', 'Bucaramanga', 'Colombia');

-- Insertar categorías
INSERT INTO category (name, description, parent_category_id) VALUES
('Alimentos', 'Productos alimenticios básicos', NULL),
('Bebidas', 'Bebidas alcohólicas y no alcohólicas', NULL),
('Lácteos', 'Productos derivados de la leche', NULL),
('Carnes', 'Productos cárnicos frescos y procesados', NULL),
('Frutas y Verduras', 'Productos frescos del campo', NULL),
('Panadería', 'Productos de panadería y repostería', NULL);

-- Insertar productos
INSERT INTO product (product_name, category_id, quantity_per_unit, unit_price, units_in_stock, discontinued) VALUES
('Arroz Premium', 1, 1, 4.50, 100, FALSE),
('Aceite de Oliva', 1, 1, 6.75, 50, FALSE),
('Pan Integral', 1, 1, 2.25, 80, FALSE),
('Coca Cola', 2, 1, 2.50, 200, FALSE),
('Jugo de Naranja', 2, 1, 3.80, 75, FALSE),
('Leche Entera', 3, 1, 3.20, 120, FALSE),
('Queso Cheddar', 3, 1, 8.90, 30, FALSE),
('Pollo Fresco', 4, 1, 12.50, 40, FALSE),
('Carne de Res', 4, 1, 18.75, 25, FALSE),
('Manzanas Rojas', 5, 1, 4.20, 60, FALSE),
('Bananos', 5, 1, 2.80, 90, FALSE),
('Lechuga', 5, 1, 1.50, 45, FALSE),
('Croissant', 6, 1, 2.95, 35, FALSE),
-- Productos descatalogados para la consulta 8
('Torta de Chocolate', 6, 1, 15.60, 0, TRUE),
('Pastel de Fresa', 6, 1, 12.30, 0, TRUE),
('Donas Glaseadas', 6, 1, 8.75, 0, TRUE),
('Muffins de Arándano', 6, 1, 6.90, 0, TRUE),
('Mantequilla Antigua', 3, 1, 5.40, 0, TRUE),
('Yogurt Griego', 3, 1, 4.80, 0, TRUE),
('Queso Azul', 3, 1, 18.50, 0, TRUE),
('Jamón Serrano', 4, 1, 22.30, 0, TRUE),
('Chorizo Español', 4, 1, 15.80, 0, TRUE),
('Salami Italiano', 4, 1, 19.40, 0, TRUE),
('Vino Tinto', 2, 1, 35.00, 0, TRUE),
('Cerveza Artesanal', 2, 1, 8.50, 0, TRUE),
('Whisky Premium', 2, 1, 125.00, 0, TRUE);

-- Insertar compras
INSERT INTO purchase (customer_id, employee_id, total_price, purchase_date, shipped_date, ship_address, ship_city, ship_country) VALUES
(1, 1, 25.45, '2024-01-15 10:30:00', '2024-01-16 14:20:00', 'Calle 45 #23-67', 'Bogotá', 'Colombia'),
(2, 2, 67.80, '2024-01-20 15:45:00', '2024-01-22 09:15:00', 'Carrera 78 #45-12', 'Medellín', 'Colombia'),
(3, 1, 156.90, '2024-02-05 11:20:00', '2024-02-07 16:30:00', 'Avenida 89 #34-56', 'Cali', 'Colombia'),
(1, 3, 89.25, '2024-02-12 09:10:00', '2024-02-14 13:45:00', 'Calle 45 #23-67', 'Bogotá', 'Colombia'),
(4, 4, 42.15, '2024-02-18 14:30:00', '2024-02-20 10:20:00', 'Calle 12 #67-89', 'Knoxville', 'Estados Unidos');

-- Insertar items de compra
INSERT INTO purchase_item (purchase_id, product_id, unit_price, quantity) VALUES
(1, 1, 4.50, 2),
(1, 3, 2.25, 3),
(1, 10, 4.20, 2),
(2, 4, 2.50, 5),
(2, 5, 3.80, 4),
(2, 6, 3.20, 8),
(2, 11, 2.80, 6),
(3, 8, 12.50, 4),
(3, 9, 18.75, 3),
(3, 7, 8.90, 5),
(3, 10, 4.20, 3),
(4, 1, 4.50, 5),
(4, 2, 6.75, 3),
(4, 12, 1.50, 8),
(4, 13, 2.95, 6),
(5, 14, 15.60, 1),
(5, 15, 5.40, 2),
(5, 16, 22.30, 1);