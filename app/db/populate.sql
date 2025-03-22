-- Insertar 20 elementos en la tabla "user"
INSERT INTO "user" (id, full_name, user_name, mail, password, date_of_birth, phone_number) VALUES
(1, 'Usuario Uno', 'usuario1', 'usuario1@example.com', 'pass1', '1990-01-01', '555-0001'),
(2, 'Usuario Dos', 'usuario2', 'usuario2@example.com', 'pass2', '1990-02-02', '555-0002'),
(3, 'Usuario Tres', 'usuario3', 'usuario3@example.com', 'pass3', '1990-03-03', '555-0003'),
(4, 'Usuario Cuatro', 'usuario4', 'usuario4@example.com', 'pass4', '1990-04-04', '555-0004'),
(5, 'Usuario Cinco', 'usuario5', 'usuario5@example.com', 'pass5', '1990-05-05', '555-0005'),
(6, 'Usuario Seis', 'usuario6', 'usuario6@example.com', 'pass6', '1990-06-06', '555-0006'),
(7, 'Usuario Siete', 'usuario7', 'usuario7@example.com', 'pass7', '1990-07-07', '555-0007'),
(8, 'Usuario Ocho', 'usuario8', 'usuario8@example.com', 'pass8', '1990-08-08', '555-0008'),
(9, 'Usuario Nueve', 'usuario9', 'usuario9@example.com', 'pass9', '1990-09-09', '555-0009'),
(10, 'Usuario Diez', 'usuario10', 'usuario10@example.com', 'pass10', '1990-10-10', '555-0010'),
(11, 'Usuario Once', 'usuario11', 'usuario11@example.com', 'pass11', '1991-01-11', '555-0011'),
(12, 'Usuario Doce', 'usuario12', 'usuario12@example.com', 'pass12', '1991-02-12', '555-0012'),
(13, 'Usuario Trece', 'usuario13', 'usuario13@example.com', 'pass13', '1991-03-13', '555-0013'),
(14, 'Usuario Catorce', 'usuario14', 'usuario14@example.com', 'pass14', '1991-04-14', '555-0014'),
(15, 'Usuario Quince', 'usuario15', 'usuario15@example.com', 'pass15', '1991-05-15', '555-0015'),
(16, 'Usuario Dieciséis', 'usuario16', 'usuario16@example.com', 'pass16', '1991-06-16', '555-0016'),
(17, 'Usuario Diecisiete', 'usuario17', 'usuario17@example.com', 'pass17', '1991-07-17', '555-0017'),
(18, 'Usuario Dieciocho', 'usuario18', 'usuario18@example.com', 'pass18', '1991-08-18', '555-0018'),
(19, 'Usuario Diecinueve', 'usuario19', 'usuario19@example.com', 'pass19', '1991-09-19', '555-0019'),
(20, 'Usuario Veinte', 'usuario20', 'usuario20@example.com', 'pass20', '1991-10-20', '555-0020');

-- Insertar 20 elementos en la tabla category
INSERT INTO category (id, name, monthly_budget) VALUES
(1, 'earning', 500.00),
(2, 'savings', 300.00),
(3, 'needs', 800.00),
(4, 'wants', 200.00),


-- Insertar 20 elementos en la tabla subcategory
-- Se asigna cada subcategoría a un category_id válido (en este ejemplo, se usa el mismo id para simplificar)
INSERT INTO subcategory (id, name, monthly_budget, category_id) VALUES
(1, 'Supermercado', 300.00, 1),
(2, 'Restaurantes', 200.00, 1),
(3, 'Buses', 150.00, 2),
(4, 'Taxi', 150.00, 2),
(5, 'Hipoteca', 500.00, 3),
(6, 'Alquiler', 300.00, 3),
(7, 'Consultas Médicas', 120.00, 4),
(8, 'Medicamentos', 80.00, 4),
(9, 'Colegiaturas', 250.00, 5),
(10, 'Libros', 150.00, 5),
(11, 'Cine', 100.00, 6),
(12, 'Conciertos', 150.00, 6),
(13, 'Zapatos', 90.00, 7),
(14, 'Ropa Formal', 60.00, 7),
(15, 'Gadgets', 200.00, 8),
(16, 'Accesorios', 150.00, 8),
(17, 'Vuelos', 400.00, 9),
(18, 'Hoteles', 200.00, 9),
(19, 'Inversiones', 600.00, 10),
(20, 'Fondo de Emergencia', 400.00, 10);

-- Insertar 20 elementos en la tabla "transaction"
INSERT INTO "transaction" (date, amount, description, category_id, user_id) VALUES
('2026-1-26', 150.50, 'Compra en supermercado', 3, 1),
('2026-1-27', 25.00, 'Café con amigos', 4, 1),
('2026-1-28', 1200.00, 'Salario mensual', 1, 1),
('2026-1-29', 50.75, 'Pago de factura de luz', 3, 1),
('2026-1-30', 300.25, 'Transferencia a cuenta de ahorros', 2, 1),
('2026-1-31', 75.00, 'Cena en restaurante', 4, 1);

-- Insertar 20 elementos en la tabla notification
INSERT INTO notification (id, name, content, date, user_id) VALUES
(1, 'Alerta de Presupuesto', 'Se ha alcanzado el límite de presupuesto en Alimentación', '2025-03-05 10:00:00', 1),
(2, 'Recordatorio', 'El pago del alquiler vence mañana', '2025-03-06 09:00:00', 2),
(3, 'Aviso', 'Revisión de consulta médica pendiente', '2025-03-07 08:30:00', 3),
(4, 'Alerta', 'Gastos en transporte superados', '2025-03-08 11:00:00', 4),
(5, 'Notificación', 'Nuevo mensaje en tu cuenta', '2025-03-09 12:00:00', 5),
(6, 'Alerta de Seguridad', 'Cambio de contraseña recomendado', '2025-03-10 13:00:00', 6),
(7, 'Recordatorio', 'Cita médica agendada para mañana', '2025-03-11 14:00:00', 7),
(8, 'Aviso', 'Actualización de datos de usuario', '2025-03-12 15:00:00', 8),
(9, 'Notificación', 'Nuevo registro en el sistema', '2025-03-13 16:00:00', 9),
(10, 'Alerta', 'Falta de fondos en la cuenta', '2025-03-14 17:00:00', 10),
(11, 'Recordatorio', 'Recordatorio de pago de colegiatura', '2025-03-15 18:00:00', 11),
(12, 'Aviso', 'Actualización de presupuesto mensual', '2025-03-16 19:00:00', 12),
(13, 'Notificación', 'Acceso desde dispositivo desconocido', '2025-03-17 20:00:00', 13),
(14, 'Alerta de Seguridad', 'Revisa tus transacciones recientes', '2025-03-18 21:00:00', 14),
(15, 'Recordatorio', 'Próximo vencimiento de factura', '2025-03-19 22:00:00', 15),
(16, 'Aviso', 'Actualización de términos y condiciones', '2025-03-20 23:00:00', 16),
(17, 'Notificación', 'Verifica tu correo electrónico', '2025-03-21 08:00:00', 17),
(18, 'Alerta', 'Actividad inusual en tu cuenta', '2025-03-22 09:00:00', 18),
(19, 'Recordatorio', 'Revisión trimestral de gastos', '2025-03-23 10:00:00', 19),
(20, 'Aviso', 'Nuevo aviso de actualización', '2025-03-24 11:00:00', 20);
--Para el home

INSERT INTO "user" (full_name, email, date_of_birth, phone_number) VALUES
('John Doe', 'johndoe@example.com', '1990-05-20', '1234567890'),
('Jane Smith', 'janesmith@example.com', '1992-10-15', '0987654321');



INSERT INTO "categorytype" (name, description) VALUES
('earnings', 'Income sources such as salary or freelancing'),
('savings', 'Money saved for future use'),
('needs', 'Necessary expenses like rent, bills, food'),
('wants', 'Non-essential expenses like entertainment, shopping');


INSERT INTO "category" (name, description, category_type_id) VALUES
('Salary', 'Monthly salary income', 1),
('Freelancing', 'Freelancing projects earnings', 1),
('Emergency Fund', 'Savings for emergencies', 2),
('Rent', 'Monthly rent payments', 3),
('Groceries', 'Monthly food expenses', 3),
('Entertainment', 'Movies, concerts, games', 4),
('Shopping', 'Buying clothes, gadgets, etc.', 4);


INSERT INTO "budget" (month, year, user_id) VALUES
(3, 2025, 1),
(3, 2025, 2);
(3, 2025, 3);
(3, 2025, 4);
(2, 2025, 1),
(2, 2025, 2);
(2, 2025, 3);
(2, 2025, 4);
(1, 2025, 1),
(1, 2025, 2);
(1, 2025, 3);
(1, 2025, 4);

INSERT INTO "budgetcategorytype" (percentage, category_type_id, budget_id) VALUES
(20, 2, 1),  -- 20% para ahorros
(25, 3, 1),  -- 40% para necesidades
(5, 4, 1),   -- 20$ para deseos

(15, 2, 2),  -- 10% para ahorros
(20, 3, 2),  -- 50% para necesidades
(5, 4, 2);   -- 40% para deseos

(20, 2, 1),  -- 20% para ahorros
(25, 3, 1),  -- 40% para necesidades
(5, 4, 1),   -- 20$ para deseos

(15, 2, 2),  -- 10% para ahorros
(20, 3, 2),  -- 50% para necesidades
(5, 4, 2);   -- 40% para deseos

insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-21', 836, 'Music', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-07', 592, 'Home', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-12', 233, 'Industrial', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-04', 81, 'Baby', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-29', 369, 'Shoes', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-27', 244, 'Garden', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-26', 344, 'Industrial', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-18', 880, 'Kids', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-23', 73, 'Books', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 984, 'Electronics', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-18', 717, 'Books', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-12', 387, 'Grocery', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-29', 620, 'Baby', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 768, 'Grocery', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 139, 'Automotive', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 812, 'Sports', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-18', 129, 'Tools', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-08', 643, 'Automotive', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-07', 431, 'Books', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-24', 268, 'Shoes', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-17', 234, 'Beauty', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-26', 606, 'Sports', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-29', 46, 'Tools', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 484, 'Music', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-16', 368, 'Grocery', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-07', 68, 'Beauty', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-13', 366, 'Shoes', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-10', 341, 'Tools', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 276, 'Garden', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-26', 116, 'Jewelry', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 312, 'Books', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-14', 517, 'Electronics', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-14', 247, 'Electronics', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-15', 91, 'Baby', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-10', 933, 'Toys', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-14', 657, 'Outdoors', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-24', 713, 'Beauty', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-29', 54, 'Movies', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-11', 663, 'Grocery', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-16', 606, 'Tools', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-07', 949, 'Baby', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 874, 'Electronics', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-26', 565, 'Tools', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-26', 637, 'Kids', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 637, 'Clothing', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-26', 81, 'Kids', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-12', 882, 'Home', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 860, 'Industrial', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-26', 455, 'Shoes', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-05', 502, 'Movies', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 119, 'Garden', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 286, 'Garden', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-21', 671, 'Music', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 513, 'Jewelry', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-28', 730, 'Sports', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 490, 'Sports', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-30', 99, 'Garden', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-28', 641, 'Computers', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-18', 144, 'Industrial', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 936, 'Industrial', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-23', 687, 'Health', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-11', 686, 'Movies', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-21', 142, 'Music', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-21', 736, 'Outdoors', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-29', 755, 'Beauty', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 845, 'Music', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-13', 3, 'Industrial', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-20', 739, 'Toys', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-01', 17, 'Jewelry', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 563, 'Books', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-06', 840, 'Outdoors', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 684, 'Garden', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-09', 347, 'Garden', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-04', 329, 'Shoes', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-22', 886, 'Beauty', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-08', 875, 'Jewelry', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-19', 398, 'Clothing', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-25', 945, 'Garden', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-25', 802, 'Baby', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-14', 65, 'Industrial', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 969, 'Sports', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 818, 'Grocery', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 314, 'Grocery', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-29', 884, 'Industrial', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 504, 'Music', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-08', 775, 'Sports', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-04', 63, 'Games', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-15', 946, 'Electronics', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-24', 119, 'Outdoors', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-12', 10, 'Movies', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 92, 'Industrial', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-12', 564, 'Home', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-03', 831, 'Beauty', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-18', 355, 'Beauty', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 395, 'Music', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 554, 'Games', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-27', 667, 'Movies', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-03', 37, 'Beauty', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 809, 'Baby', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 108, 'Jewelry', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-09', 774, 'Beauty', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 538, 'Garden', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-15', 752, 'Automotive', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 262, 'Baby', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 508, 'Kids', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 502, 'Health', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-15', 17, 'Clothing', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-01', 456, 'Electronics', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-06', 661, 'Clothing', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-19', 299, 'Books', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-21', 404, 'Jewelry', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-22', 775, 'Kids', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-27', 913, 'Games', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-14', 437, 'Clothing', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-27', 114, 'Electronics', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-12', 86, 'Outdoors', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-11', 41, 'Industrial', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-29', 851, 'Health', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-21', 848, 'Electronics', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-17', 270, 'Automotive', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-05', 985, 'Industrial', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 609, 'Books', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 823, 'Beauty', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-06', 894, 'Sports', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-01', 66, 'Sports', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-11', 904, 'Toys', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-22', 352, 'Baby', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-23', 102, 'Jewelry', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-06', 471, 'Games', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-18', 588, 'Garden', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-25', 704, 'Electronics', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 697, 'Automotive', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-03', 620, 'Jewelry', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 176, 'Shoes', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-17', 843, 'Movies', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-04', 508, 'Electronics', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-04', 473, 'Clothing', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 71, 'Books', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-13', 522, 'Baby', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-25', 746, 'Outdoors', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-11', 235, 'Sports', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-03', 971, 'Shoes', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 572, 'Games', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-22', 382, 'Sports', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-09', 429, 'Outdoors', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-24', 558, 'Toys', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-19', 857, 'Health', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-28', 67, 'Movies', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 945, 'Clothing', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 781, 'Clothing', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-06', 947, 'Beauty', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-06', 176, 'Computers', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-06', 40, 'Movies', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-23', 212, 'Games', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-05', 158, 'Clothing', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-20', 856, 'Clothing', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-01', 317, 'Baby', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-30', 203, 'Toys', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-23', 535, 'Home', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 372, 'Music', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-14', 880, 'Garden', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-21', 203, 'Garden', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-27', 509, 'Books', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-06', 540, 'Tools', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-28', 366, 'Grocery', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-24', 875, 'Books', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-23', 475, 'Electronics', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-28', 912, 'Sports', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-05', 177, 'Toys', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-22', 230, 'Clothing', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-24', 315, 'Grocery', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-18', 103, 'Tools', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 74, 'Industrial', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-18', 443, 'Health', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-27', 30, 'Shoes', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-20', 823, 'Beauty', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-04', 232, 'Books', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-25', 879, 'Music', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-23', 531, 'Shoes', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-15', 805, 'Baby', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 114, 'Electronics', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-11', 526, 'Games', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-22', 352, 'Clothing', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-05', 559, 'Games', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-01', 702, 'Toys', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-21', 293, 'Jewelry', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-05', 88, 'Shoes', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-20', 595, 'Automotive', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-07', 257, 'Industrial', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 410, 'Industrial', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-15', 501, 'Electronics', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-20', 23, 'Clothing', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-24', 660, 'Jewelry', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-15', 781, 'Kids', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-23', 346, 'Baby', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 423, 'Automotive', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-25', 515, 'Kids', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-11', 618, 'Health', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-15', 402, 'Garden', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-27', 939, 'Books', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 606, 'Toys', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-03', 126, 'Health', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-05', 336, 'Garden', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-02', 90, 'Jewelry', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-21', 361, 'Kids', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-18', 19, 'Home', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-24', 611, 'Electronics', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-23', 231, 'Automotive', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-11', 458, 'Movies', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-01', 637, 'Home', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 103, 'Computers', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-05', 110, 'Industrial', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-28', 348, 'Computers', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-07', 125, 'Jewelry', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-06', 332, 'Kids', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-26', 700, 'Kids', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-26', 890, 'Beauty', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-28', 580, 'Shoes', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-03', 13, 'Home', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-29', 507, 'Garden', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-28', 403, 'Garden', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-04', 344, 'Industrial', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-04', 929, 'Toys', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-13', 436, 'Shoes', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-31', 345, 'Jewelry', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-24', 577, 'Computers', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-05', 940, 'Sports', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-11', 658, 'Beauty', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 68, 'Computers', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-22', 311, 'Clothing', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-15', 364, 'Movies', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 44, 'Tools', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 458, 'Movies', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-29', 938, 'Electronics', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 52, 'Shoes', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-22', 464, 'Tools', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-12', 359, 'Computers', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-04', 469, 'Garden', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-01', 504, 'Games', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 729, 'Kids', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-28', 92, 'Outdoors', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-22', 861, 'Books', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 825, 'Jewelry', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 924, 'Jewelry', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-19', 106, 'Books', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-31', 879, 'Books', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-30', 76, 'Music', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-01', 121, 'Sports', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-05', 808, 'Outdoors', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 257, 'Baby', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-04', 167, 'Sports', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 904, 'Beauty', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-26', 288, 'Computers', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-20', 27, 'Games', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-21', 358, 'Tools', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-14', 514, 'Books', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-10', 285, 'Books', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 328, 'Shoes', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-16', 422, 'Automotive', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-15', 124, 'Automotive', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 728, 'Industrial', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-11', 308, 'Baby', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-15', 88, 'Garden', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-17', 91, 'Garden', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 654, 'Baby', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-27', 711, 'Garden', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-10', 397, 'Health', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-08', 593, 'Outdoors', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 299, 'Baby', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 745, 'Movies', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-05', 445, 'Garden', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-02', 323, 'Baby', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 728, 'Shoes', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-30', 462, 'Grocery', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 570, 'Music', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-15', 415, 'Clothing', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 871, 'Jewelry', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 677, 'Electronics', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-09', 863, 'Garden', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-07', 218, 'Tools', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 877, 'Grocery', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-25', 513, 'Computers', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-30', 973, 'Shoes', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-22', 283, 'Toys', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-04', 30, 'Health', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 232, 'Sports', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-19', 570, 'Music', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-05', 428, 'Movies', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 618, 'Electronics', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-08', 736, 'Computers', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-01', 931, 'Clothing', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-30', 709, 'Electronics', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-20', 317, 'Industrial', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 412, 'Baby', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-10', 776, 'Computers', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-05', 951, 'Shoes', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-07', 150, 'Tools', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-18', 5, 'Beauty', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-13', 267, 'Outdoors', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-10', 22, 'Garden', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-02', 216, 'Clothing', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-28', 235, 'Automotive', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 750, 'Games', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-15', 53, 'Industrial', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-18', 469, 'Health', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-28', 506, 'Grocery', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-24', 453, 'Books', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-12', 688, 'Beauty', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-30', 911, 'Kids', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-29', 722, 'Movies', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 426, 'Tools', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 660, 'Shoes', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-17', 25, 'Health', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-12', 415, 'Baby', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-23', 656, 'Outdoors', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-16', 73, 'Music', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-18', 851, 'Home', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-24', 871, 'Toys', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-28', 566, 'Kids', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-30', 111, 'Music', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-30', 79, 'Kids', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-24', 665, 'Toys', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-18', 462, 'Garden', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-27', 945, 'Clothing', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-19', 595, 'Kids', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-17', 391, 'Jewelry', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-12', 364, 'Health', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-16', 942, 'Computers', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-23', 930, 'Baby', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-25', 655, 'Health', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-13', 992, 'Health', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-25', 641, 'Industrial', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-14', 544, 'Outdoors', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-20', 708, 'Computers', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 525, 'Outdoors', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-11', 573, 'Health', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 692, 'Grocery', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 332, 'Electronics', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-19', 706, 'Beauty', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-28', 460, 'Tools', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 622, 'Garden', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 844, 'Tools', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-18', 343, 'Electronics', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-09', 587, 'Computers', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-14', 940, 'Computers', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-10', 591, 'Tools', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 72, 'Games', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 861, 'Kids', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-16', 902, 'Sports', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-07', 79, 'Baby', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-05', 859, 'Kids', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-01', 490, 'Beauty', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 519, 'Electronics', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-22', 802, 'Automotive', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 912, 'Outdoors', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-19', 907, 'Clothing', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-05', 396, 'Computers', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-09', 64, 'Books', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 199, 'Automotive', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-10', 33, 'Shoes', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-06', 89, 'Books', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 465, 'Computers', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-27', 917, 'Clothing', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 566, 'Games', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 219, 'Books', 7, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-07', 766, 'Outdoors', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-20', 372, 'Tools', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-27', 928, 'Games', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-04', 823, 'Grocery', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 625, 'Kids', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-15', 42, 'Books', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-28', 80, 'Outdoors', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-16', 193, 'Movies', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-15', 611, 'Toys', 5, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-23', 639, 'Tools', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 35, 'Toys', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 713, 'Movies', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-01', 979, 'Automotive', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 633, 'Sports', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 489, 'Garden', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 879, 'Baby', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-08', 550, 'Industrial', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 952, 'Books', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-01', 929, 'Toys', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-04', 862, 'Toys', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 596, 'Outdoors', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-11', 728, 'Automotive', 4, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-12', 897, 'Kids', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 750, 'Movies', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-21', 507, 'Automotive', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-29', 586, 'Automotive', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-07', 338, 'Automotive', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 746, 'Computers', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-06', 843, 'Music', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 344, 'Garden', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 583, 'Health', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 228, 'Industrial', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 687, 'Shoes', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 419, 'Outdoors', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-27', 263, 'Jewelry', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 949, 'Books', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-03', 437, 'Garden', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-16', 947, 'Grocery', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-02', 557, 'Jewelry', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-16', 82, 'Books', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-15', 963, 'Computers', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-22', 875, 'Jewelry', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-29', 279, 'Home', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-28', 583, 'Music', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-08', 198, 'Sports', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 727, 'Sports', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-30', 854, 'Games', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-30', 480, 'Home', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-28', 326, 'Beauty', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-04', 264, 'Games', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 629, 'Computers', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 510, 'Sports', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-06', 250, 'Electronics', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-07', 845, 'Outdoors', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-15', 843, 'Movies', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-09', 638, 'Kids', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-16', 767, 'Music', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 487, 'Electronics', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-14', 153, 'Shoes', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-13', 440, 'Industrial', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-28', 468, 'Tools', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 888, 'Beauty', 2, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-07', 292, 'Sports', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-27', 299, 'Jewelry', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-30', 883, 'Industrial', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-28', 972, 'Movies', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-20', 955, 'Movies', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-05', 70, 'Grocery', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-28', 945, 'Electronics', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-17', 968, 'Computers', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-08', 922, 'Garden', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 211, 'Outdoors', 3, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-22', 4, 'Music', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-02', 587, 'Kids', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 31, 'Sports', 4, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-25', 829, 'Shoes', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-16', 177, 'Beauty', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-22', 997, 'Clothing', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-26', 7, 'Home', 5, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 492, 'Kids', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 334, 'Computers', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-04', 426, 'Music', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-06', 468, 'Outdoors', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-20', 332, 'Baby', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 367, 'Home', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 152, 'Automotive', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-13', 55, 'Kids', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-08', 95, 'Beauty', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 825, 'Industrial', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-06', 641, 'Home', 4, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-02', 535, 'Books', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-22', 671, 'Games', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 701, 'Shoes', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 990, 'Jewelry', 7, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-25', 697, 'Garden', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 949, 'Sports', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 931, 'Sports', 2, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 777, 'Books', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 874, 'Kids', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-27', 107, 'Toys', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-12', 314, 'Shoes', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-21', 492, 'Jewelry', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-09', 793, 'Kids', 6, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 25, 'Baby', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-19', 645, 'Baby', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 734, 'Toys', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 294, 'Kids', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-21', 572, 'Toys', 1, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-04', 650, 'Computers', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-02', 677, 'Computers', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 3, 'Industrial', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 421, 'Grocery', 3, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 150, 'Books', 6, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 297, 'Toys', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 369, 'Kids', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-14', 457, 'Computers', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-09', 149, 'Baby', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-12', 899, 'Sports', 2, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-02', 859, 'Shoes', 4, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 763, 'Jewelry', 6, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-24', 319, 'Garden', 7, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-11', 551, 'Kids', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 465, 'Baby', 6, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-22', 968, 'Grocery', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 721, 'Grocery', 5, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 201, 'Sports', 1, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-27', 824, 'Automotive', 5, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-18', 13, 'Books', 1, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 435, 'Industrial', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-19', 399, 'Garden', 3, 9);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-09', 579, 'Jewelry', 7, 10);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 451, 'Electronics', 1, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-05', 241, 'Automotive', 2, 8);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-15', 991, 'Beauty', 3, 11);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-28', 821, 'Toys', 3, 9);
