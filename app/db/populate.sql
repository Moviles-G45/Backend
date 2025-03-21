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

insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-08', 991, 'Outdoors', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-23', 710, 'Music', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 192, 'Industrial', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-15', 959, 'Baby', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-05', 846, 'Home', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-05', 840, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-22', 52, 'Electronics', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-20', 753, 'Outdoors', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 998, 'Health', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-01', 151, 'Books', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-07', 119, 'Sports', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-07', 351, 'Kids', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-28', 768, 'Beauty', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 850, 'Health', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-13', 554, 'Games', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 777, 'Computers', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 671, 'Home', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 376, 'Games', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-17', 66, 'Health', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-07', 782, 'Games', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-28', 23, 'Outdoors', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-27', 833, 'Toys', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-05', 853, 'Toys', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-03', 998, 'Books', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 664, 'Health', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-25', 887, 'Grocery', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-12', 587, 'Sports', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-04', 346, 'Kids', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-17', 908, 'Kids', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-22', 145, 'Tools', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-03', 922, 'Grocery', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 850, 'Toys', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-06', 349, 'Beauty', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-06', 140, 'Sports', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-16', 116, 'Tools', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-17', 980, 'Industrial', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 634, 'Health', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-09', 812, 'Games', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-22', 542, 'Movies', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 345, 'Sports', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 933, 'Games', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-26', 69, 'Tools', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-16', 574, 'Toys', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 390, 'Toys', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-24', 267, 'Jewelry', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 198, 'Sports', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-13', 704, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-17', 234, 'Outdoors', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-20', 787, 'Computers', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 577, 'Outdoors', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-21', 391, 'Sports', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-05', 404, 'Outdoors', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-06', 770, 'Games', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-16', 933, 'Grocery', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-15', 6, 'Kids', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-17', 681, 'Baby', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 847, 'Kids', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 836, 'Home', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-11', 515, 'Music', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-02', 551, 'Games', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 928, 'Shoes', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-08', 830, 'Kids', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 511, 'Clothing', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-03', 79, 'Tools', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-07', 523, 'Clothing', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-04', 279, 'Shoes', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-10', 266, 'Health', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-06', 136, 'Movies', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-30', 423, 'Kids', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 219, 'Movies', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-27', 226, 'Home', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 404, 'Games', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-30', 832, 'Games', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-20', 425, 'Jewelry', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 988, 'Electronics', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-18', 3, 'Movies', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-13', 3, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-04', 815, 'Automotive', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 138, 'Books', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-12', 774, 'Kids', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 121, 'Shoes', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 541, 'Automotive', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-29', 69, 'Shoes', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 611, 'Beauty', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-19', 746, 'Industrial', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 561, 'Automotive', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 825, 'Home', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-22', 287, 'Outdoors', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-15', 760, 'Games', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-13', 693, 'Outdoors', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-09', 265, 'Games', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 518, 'Clothing', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-30', 531, 'Automotive', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 847, 'Home', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-14', 456, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-10', 252, 'Health', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-10', 821, 'Outdoors', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 709, 'Health', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-05', 892, 'Tools', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-08', 943, 'Health', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-22', 881, 'Electronics', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-17', 190, 'Sports', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-16', 576, 'Music', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 346, 'Tools', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-15', 738, 'Movies', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-25', 102, 'Automotive', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 889, 'Movies', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 303, 'Kids', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-19', 141, 'Music', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 851, 'Movies', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-29', 682, 'Garden', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-12', 14, 'Books', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-28', 993, 'Beauty', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-27', 195, 'Grocery', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-10', 691, 'Home', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-01', 119, 'Movies', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-30', 700, 'Shoes', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 464, 'Outdoors', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 870, 'Health', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-12', 905, 'Industrial', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 292, 'Shoes', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-08', 239, 'Garden', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-18', 725, 'Home', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 576, 'Outdoors', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-22', 960, 'Toys', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-08', 526, 'Books', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 832, 'Toys', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 102, 'Electronics', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-22', 819, 'Computers', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-04', 692, 'Kids', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-23', 859, 'Toys', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-17', 303, 'Industrial', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 589, 'Clothing', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-29', 820, 'Garden', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-13', 71, 'Shoes', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 745, 'Jewelry', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-12', 360, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-14', 58, 'Electronics', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 148, 'Grocery', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 440, 'Computers', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-24', 24, 'Baby', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-30', 406, 'Clothing', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 399, 'Electronics', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-17', 84, 'Beauty', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-23', 161, 'Outdoors', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 496, 'Jewelry', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-20', 991, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-29', 621, 'Games', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-27', 916, 'Music', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-26', 18, 'Industrial', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-22', 856, 'Music', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-21', 418, 'Computers', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-25', 87, 'Beauty', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-26', 340, 'Automotive', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 724, 'Kids', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-10', 797, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 177, 'Industrial', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-12', 578, 'Movies', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 599, 'Automotive', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-25', 152, 'Kids', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 62, 'Shoes', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-18', 238, 'Clothing', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-06', 194, 'Games', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-06', 613, 'Outdoors', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 365, 'Health', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-17', 648, 'Kids', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-31', 911, 'Games', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-12', 997, 'Kids', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-13', 537, 'Baby', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 904, 'Sports', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-23', 919, 'Baby', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 581, 'Jewelry', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-24', 657, 'Movies', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-13', 286, 'Grocery', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-26', 811, 'Movies', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-14', 930, 'Garden', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-04', 993, 'Electronics', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-15', 118, 'Industrial', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 12, 'Outdoors', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-14', 366, 'Garden', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-21', 789, 'Books', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-29', 286, 'Outdoors', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-23', 727, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 69, 'Shoes', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-16', 883, 'Books', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-31', 793, 'Games', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-11', 138, 'Tools', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 948, 'Grocery', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-22', 798, 'Books', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-26', 212, 'Games', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-07', 693, 'Kids', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 227, 'Industrial', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-30', 843, 'Books', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 817, 'Automotive', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-18', 949, 'Movies', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-26', 497, 'Games', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-09', 372, 'Automotive', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-27', 204, 'Grocery', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-23', 150, 'Health', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-29', 477, 'Music', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-02', 803, 'Toys', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-14', 965, 'Electronics', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 693, 'Games', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-11', 407, 'Music', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-06', 978, 'Home', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-21', 380, 'Beauty', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 816, 'Computers', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-16', 885, 'Tools', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-25', 168, 'Jewelry', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 112, 'Electronics', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-03', 427, 'Shoes', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-31', 333, 'Music', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-15', 973, 'Industrial', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-04', 832, 'Garden', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-12', 751, 'Beauty', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-12', 268, 'Tools', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-28', 552, 'Grocery', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-28', 565, 'Computers', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-26', 245, 'Outdoors', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-04', 663, 'Garden', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-12', 456, 'Grocery', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 813, 'Shoes', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-07', 403, 'Movies', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 920, 'Grocery', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-18', 501, 'Garden', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-01', 799, 'Kids', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 493, 'Industrial', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-13', 11, 'Outdoors', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-06', 358, 'Grocery', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-04', 439, 'Beauty', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-02', 602, 'Industrial', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-11', 867, 'Tools', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-29', 99, 'Automotive', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-28', 367, 'Kids', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-20', 936, 'Baby', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-20', 432, 'Grocery', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-13', 239, 'Kids', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-04', 289, 'Shoes', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 567, 'Electronics', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-11', 718, 'Games', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 940, 'Industrial', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-16', 543, 'Clothing', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-10', 180, 'Electronics', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-25', 143, 'Games', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-15', 789, 'Grocery', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-22', 5, 'Jewelry', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-15', 354, 'Sports', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 237, 'Kids', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-27', 768, 'Baby', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-21', 327, 'Automotive', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-24', 457, 'Home', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 159, 'Sports', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-25', 439, 'Shoes', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 536, 'Garden', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-20', 226, 'Beauty', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-19', 98, 'Music', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 674, 'Music', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-20', 333, 'Computers', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-29', 840, 'Baby', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 366, 'Sports', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-18', 870, 'Sports', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 717, 'Electronics', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-06', 622, 'Home', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-18', 189, 'Kids', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 58, 'Health', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 805, 'Sports', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-06', 67, 'Clothing', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 981, 'Garden', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-07', 431, 'Grocery', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-05', 793, 'Electronics', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-25', 249, 'Grocery', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-02', 164, 'Health', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-27', 279, 'Clothing', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 784, 'Games', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 848, 'Games', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 863, 'Games', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-25', 213, 'Computers', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-06', 618, 'Games', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 193, 'Home', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-23', 540, 'Garden', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 679, 'Clothing', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-12', 449, 'Jewelry', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-04', 34, 'Electronics', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-12', 456, 'Kids', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-27', 218, 'Toys', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 865, 'Grocery', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-16', 480, 'Tools', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 301, 'Health', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-07', 503, 'Industrial', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-12', 169, 'Sports', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-05', 482, 'Music', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-22', 675, 'Games', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 991, 'Electronics', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-14', 478, 'Automotive', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-22', 254, 'Sports', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-24', 170, 'Electronics', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-20', 836, 'Computers', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-06', 216, 'Industrial', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-12', 318, 'Clothing', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-04', 998, 'Garden', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 301, 'Electronics', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-05', 836, 'Automotive', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-26', 676, 'Beauty', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-16', 323, 'Clothing', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-24', 202, 'Music', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-17', 86, 'Toys', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 46, 'Games', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 659, 'Beauty', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-29', 350, 'Games', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-26', 877, 'Automotive', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 157, 'Games', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-27', 946, 'Beauty', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-04', 270, 'Beauty', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 598, 'Home', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-22', 946, 'Movies', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-15', 139, 'Music', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-03', 591, 'Beauty', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-25', 751, 'Baby', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 611, 'Shoes', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 241, 'Industrial', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-24', 435, 'Outdoors', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-23', 112, 'Industrial', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-18', 720, 'Music', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-08', 445, 'Electronics', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-23', 993, 'Electronics', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 309, 'Industrial', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-10', 442, 'Automotive', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-10', 538, 'Home', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-18', 466, 'Computers', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-21', 333, 'Jewelry', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 479, 'Books', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 24, 'Toys', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-19', 309, 'Tools', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-23', 469, 'Outdoors', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 730, 'Grocery', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-13', 980, 'Tools', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-06', 580, 'Music', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-14', 235, 'Games', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-04', 499, 'Garden', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-09', 976, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 501, 'Games', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-17', 496, 'Industrial', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 958, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-30', 874, 'Music', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-05', 345, 'Grocery', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-24', 104, 'Garden', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-12', 10, 'Kids', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-20', 374, 'Computers', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-24', 168, 'Outdoors', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-19', 138, 'Baby', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-24', 27, 'Garden', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-26', 132, 'Sports', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-09', 204, 'Tools', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-13', 601, 'Beauty', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-18', 52, 'Shoes', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 324, 'Toys', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-01', 217, 'Automotive', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-24', 712, 'Tools', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-02', 27, 'Outdoors', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-28', 714, 'Grocery', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-10', 711, 'Toys', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 252, 'Baby', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-22', 26, 'Outdoors', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 416, 'Computers', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 554, 'Automotive', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-25', 614, 'Shoes', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-20', 702, 'Outdoors', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-20', 44, 'Outdoors', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-06', 929, 'Outdoors', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 888, 'Games', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-06', 490, 'Toys', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-20', 388, 'Kids', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-06', 800, 'Garden', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-06', 638, 'Sports', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-29', 645, 'Beauty', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-09', 407, 'Music', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-31', 358, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-08', 308, 'Outdoors', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-26', 914, 'Jewelry', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 527, 'Sports', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-10', 462, 'Music', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 344, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-31', 716, 'Kids', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-05', 965, 'Outdoors', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-06', 187, 'Health', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-21', 888, 'Baby', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 701, 'Grocery', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-24', 911, 'Baby', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 811, 'Toys', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-11', 217, 'Clothing', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-24', 243, 'Tools', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-16', 603, 'Toys', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 400, 'Games', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-27', 663, 'Sports', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-30', 90, 'Tools', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 609, 'Books', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-25', 265, 'Grocery', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-30', 945, 'Movies', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-08', 899, 'Home', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 145, 'Music', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-03', 988, 'Garden', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-25', 597, 'Industrial', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 117, 'Clothing', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 517, 'Jewelry', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-10', 315, 'Garden', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-11', 653, 'Toys', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-21', 1000, 'Kids', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-15', 739, 'Automotive', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-23', 337, 'Industrial', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-19', 133, 'Health', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-21', 777, 'Home', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 431, 'Clothing', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-01', 827, 'Electronics', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-18', 858, 'Toys', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-03', 480, 'Industrial', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-07', 862, 'Movies', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-20', 68, 'Sports', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-26', 7, 'Beauty', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-08', 651, 'Grocery', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-10', 935, 'Shoes', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-12', 160, 'Clothing', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-16', 999, 'Books', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 950, 'Books', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-21', 120, 'Tools', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-13', 320, 'Baby', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 637, 'Home', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 441, 'Clothing', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-29', 284, 'Toys', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-29', 787, 'Grocery', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-16', 100, 'Industrial', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-21', 561, 'Computers', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-05', 949, 'Tools', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-12', 501, 'Kids', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-17', 733, 'Beauty', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-28', 229, 'Garden', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-27', 138, 'Kids', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-14', 33, 'Grocery', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 938, 'Kids', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-06', 803, 'Home', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-28', 348, 'Clothing', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 237, 'Automotive', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-18', 822, 'Clothing', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-15', 773, 'Clothing', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-11', 953, 'Grocery', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-03', 58, 'Games', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-14', 175, 'Games', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-26', 84, 'Tools', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-16', 119, 'Shoes', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 926, 'Grocery', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-28', 933, 'Games', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-06', 79, 'Garden', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-16', 862, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 438, 'Shoes', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-08', 766, 'Toys', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-29', 36, 'Outdoors', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-22', 606, 'Grocery', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-11', 162, 'Jewelry', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-28', 772, 'Sports', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-04', 90, 'Toys', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-08', 591, 'Outdoors', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 335, 'Beauty', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-18', 929, 'Music', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-09', 252, 'Toys', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-06', 515, 'Sports', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-06', 856, 'Kids', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-29', 529, 'Garden', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-06', 864, 'Shoes', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 73, 'Movies', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 667, 'Industrial', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 714, 'Outdoors', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-07', 969, 'Garden', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 407, 'Kids', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-25', 833, 'Computers', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-18', 905, 'Kids', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 187, 'Electronics', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 423, 'Industrial', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-24', 662, 'Kids', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-04', 282, 'Books', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-17', 456, 'Garden', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 800, 'Shoes', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-09', 551, 'Home', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-18', 102, 'Games', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 436, 'Home', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-23', 825, 'Industrial', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-20', 948, 'Home', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-10', 178, 'Clothing', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-12', 629, 'Shoes', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-08', 401, 'Outdoors', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-02', 872, 'Beauty', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-25', 848, 'Beauty', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 226, 'Movies', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-22', 382, 'Music', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-24', 163, 'Computers', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-16', 351, 'Baby', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-03', 454, 'Baby', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-13', 922, 'Grocery', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-23', 347, 'Toys', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-17', 58, 'Electronics', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-15', 233, 'Sports', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-26', 412, 'Beauty', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 314, 'Sports', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-25', 139, 'Kids', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-03', 992, 'Tools', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-19', 222, 'Shoes', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 202, 'Home', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-13', 174, 'Beauty', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-09', 21, 'Shoes', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-30', 231, 'Garden', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-17', 694, 'Games', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 314, 'Sports', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-27', 766, 'Outdoors', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-26', 114, 'Music', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-15', 127, 'Automotive', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 741, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-09', 183, 'Jewelry', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-28', 544, 'Games', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-22', 858, 'Games', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 975, 'Toys', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-13', 554, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-04', 675, 'Industrial', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-08', 282, 'Clothing', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-01', 458, 'Health', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-09', 821, 'Beauty', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-26', 681, 'Electronics', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-04', 952, 'Music', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-29', 363, 'Music', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-04', 551, 'Music', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-04', 10, 'Outdoors', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-01', 787, 'Music', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-12', 314, 'Jewelry', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-03', 511, 'Clothing', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-12', 572, 'Health', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 69, 'Automotive', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 829, 'Kids', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-21', 680, 'Home', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-26', 75, 'Sports', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-30', 758, 'Kids', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-03', 666, 'Garden', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-07', 915, 'Automotive', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-12', 95, 'Movies', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-01', 476, 'Jewelry', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-09', 110, 'Clothing', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-21', 714, 'Tools', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-03', 410, 'Movies', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-16', 772, 'Computers', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-19', 617, 'Toys', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-19', 357, 'Baby', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-03', 692, 'Beauty', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-25', 953, 'Toys', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-02', 995, 'Tools', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-03', 820, 'Computers', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-26', 804, 'Garden', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-18', 739, 'Health', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-04', 727, 'Beauty', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-27', 972, 'Sports', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-09', 253, 'Shoes', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-27', 105, 'Jewelry', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-26', 44, 'Books', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-18', 106, 'Industrial', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 862, 'Shoes', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-16', 423, 'Health', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-11', 843, 'Home', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-26', 175, 'Clothing', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-11', 918, 'Industrial', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 220, 'Baby', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 974, 'Computers', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-11', 267, 'Kids', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-16', 499, 'Outdoors', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-05', 634, 'Electronics', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-07', 92, 'Sports', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-18', 954, 'Music', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-18', 11, 'Health', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-07', 766, 'Health', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-27', 182, 'Jewelry', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-08', 304, 'Grocery', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-08', 26, 'Electronics', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-21', 566, 'Clothing', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-17', 957, 'Toys', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-07', 274, 'Movies', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-02', 782, 'Music', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-01', 198, 'Baby', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-30', 715, 'Music', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-25', 129, 'Shoes', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 139, 'Electronics', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 615, 'Clothing', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-28', 739, 'Shoes', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-11', 993, 'Computers', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 44, 'Games', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 722, 'Outdoors', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-29', 471, 'Shoes', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-15', 277, 'Health', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-21', 765, 'Industrial', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-26', 8, 'Tools', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-11', 271, 'Garden', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-12', 824, 'Movies', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 699, 'Books', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 832, 'Music', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-09', 601, 'Grocery', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-15', 723, 'Clothing', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-17', 793, 'Beauty', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-20', 363, 'Home', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-23', 308, 'Health', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-10', 361, 'Clothing', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-28', 966, 'Industrial', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 291, 'Games', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-09', 651, 'Music', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 789, 'Grocery', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-10', 216, 'Garden', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 803, 'Toys', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-27', 719, 'Sports', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-01', 513, 'Garden', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-14', 325, 'Automotive', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-21', 509, 'Health', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-28', 403, 'Automotive', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-24', 837, 'Toys', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 594, 'Toys', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-04', 91, 'Industrial', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 511, 'Music', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-08', 504, 'Sports', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 342, 'Baby', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-30', 874, 'Sports', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-20', 178, 'Electronics', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-20', 569, 'Baby', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-05', 317, 'Games', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-03', 640, 'Automotive', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-05', 166, 'Beauty', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 355, 'Clothing', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-02', 288, 'Kids', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-23', 318, 'Computers', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-12', 677, 'Music', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-21', 993, 'Electronics', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-10', 247, 'Beauty', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-01', 440, 'Baby', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-11', 858, 'Industrial', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-09', 586, 'Jewelry', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-27', 126, 'Home', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 55, 'Baby', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-30', 563, 'Electronics', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-28', 785, 'Automotive', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-18', 126, 'Garden', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-07', 202, 'Kids', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-18', 963, 'Electronics', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 597, 'Industrial', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-09', 128, 'Sports', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-13', 236, 'Clothing', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-17', 800, 'Toys', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-30', 181, 'Industrial', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-20', 387, 'Music', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-13', 729, 'Computers', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-16', 250, 'Grocery', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-02', 103, 'Shoes', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-06', 479, 'Movies', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-23', 123, 'Movies', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-27', 633, 'Electronics', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-01', 329, 'Health', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-01', 971, 'Clothing', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-19', 667, 'Sports', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-20', 251, 'Grocery', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 69, 'Health', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-29', 83, 'Sports', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-11', 868, 'Clothing', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-20', 932, 'Movies', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-14', 435, 'Beauty', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-24', 688, 'Health', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-28', 194, 'Electronics', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-07', 990, 'Music', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 483, 'Automotive', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 361, 'Music', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-19', 809, 'Kids', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-14', 43, 'Kids', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-02', 76, 'Books', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 832, 'Sports', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-13', 196, 'Industrial', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-22', 176, 'Home', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-27', 475, 'Industrial', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-06', 524, 'Beauty', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-07', 931, 'Clothing', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-27', 273, 'Toys', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 314, 'Jewelry', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-25', 199, 'Baby', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-04', 341, 'Movies', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-29', 566, 'Toys', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-21', 925, 'Jewelry', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-17', 564, 'Kids', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 252, 'Jewelry', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-08', 240, 'Kids', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-15', 204, 'Automotive', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-02', 529, 'Outdoors', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-24', 520, 'Grocery', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-01', 473, 'Kids', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-12', 284, 'Kids', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-25', 799, 'Books', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-01', 854, 'Grocery', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-07', 713, 'Automotive', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 749, 'Automotive', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-16', 273, 'Grocery', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 181, 'Outdoors', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-22', 942, 'Beauty', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-08', 736, 'Beauty', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-03', 634, 'Garden', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-01', 628, 'Grocery', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-03', 784, 'Games', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-11', 223, 'Tools', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-03', 963, 'Industrial', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-14', 918, 'Computers', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 592, 'Grocery', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-18', 295, 'Games', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-10', 795, 'Games', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-17', 744, 'Kids', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-09', 655, 'Garden', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-11', 108, 'Jewelry', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 960, 'Beauty', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-02', 335, 'Computers', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-03', 515, 'Health', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-18', 765, 'Clothing', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-02', 757, 'Tools', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-07', 926, 'Health', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 854, 'Music', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-28', 821, 'Outdoors', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 601, 'Grocery', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-25', 804, 'Grocery', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-19', 259, 'Beauty', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-25', 985, 'Health', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-10', 765, 'Clothing', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 636, 'Kids', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-10', 28, 'Electronics', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-28', 14, 'Music', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-22', 110, 'Health', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-03', 454, 'Beauty', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-27', 870, 'Movies', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-20', 362, 'Outdoors', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-25', 528, 'Movies', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-06', 811, 'Industrial', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-04', 495, 'Automotive', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-25', 36, 'Toys', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-17', 63, 'Grocery', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 841, 'Beauty', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 600, 'Toys', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-14', 903, 'Movies', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-28', 35, 'Clothing', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-11', 161, 'Outdoors', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-20', 678, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-09', 383, 'Movies', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-08', 280, 'Beauty', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-26', 247, 'Electronics', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 760, 'Baby', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-13', 858, 'Sports', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-05', 685, 'Jewelry', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-12', 217, 'Kids', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-28', 603, 'Games', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-14', 182, 'Games', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-10', 241, 'Baby', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-05', 624, 'Garden', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 127, 'Clothing', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 197, 'Music', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-04', 558, 'Kids', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-10', 973, 'Movies', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 769, 'Computers', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 546, 'Electronics', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-26', 438, 'Baby', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-12', 456, 'Home', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-08', 356, 'Automotive', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-03', 185, 'Music', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-07', 913, 'Kids', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 866, 'Tools', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-03', 960, 'Clothing', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-18', 800, 'Home', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-09', 540, 'Industrial', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-11', 663, 'Industrial', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-29', 662, 'Kids', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-30', 858, 'Beauty', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 211, 'Automotive', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-02', 888, 'Industrial', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-27', 775, 'Sports', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-31', 743, 'Toys', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-19', 978, 'Books', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 570, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-10', 637, 'Health', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-07', 130, 'Music', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-26', 802, 'Jewelry', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-08', 964, 'Baby', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 499, 'Computers', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-27', 128, 'Computers', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-24', 741, 'Automotive', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-18', 78, 'Jewelry', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-25', 100, 'Music', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 749, 'Clothing', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-09', 580, 'Kids', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-18', 193, 'Books', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 196, 'Clothing', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-26', 111, 'Industrial', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-16', 585, 'Movies', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 298, 'Shoes', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-15', 585, 'Electronics', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-21', 617, 'Kids', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-03', 669, 'Industrial', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-11', 582, 'Home', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-15', 61, 'Automotive', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-07', 978, 'Shoes', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-12', 435, 'Books', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-03', 791, 'Health', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-19', 417, 'Sports', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-26', 179, 'Industrial', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-25', 765, 'Health', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-18', 144, 'Clothing', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-15', 189, 'Outdoors', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-09', 325, 'Movies', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-08', 467, 'Beauty', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-04', 4, 'Music', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-25', 766, 'Home', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-04', 309, 'Movies', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 275, 'Industrial', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-14', 983, 'Music', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-04', 261, 'Jewelry', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-26', 194, 'Toys', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-21', 211, 'Industrial', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-02', 817, 'Sports', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-09', 153, 'Toys', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-12', 962, 'Baby', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 66, 'Movies', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-28', 100, 'Home', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-03', 596, 'Toys', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-23', 152, 'Clothing', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-18', 183, 'Sports', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 637, 'Automotive', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-03', 603, 'Tools', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-28', 186, 'Beauty', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 382, 'Electronics', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-17', 760, 'Music', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-26', 361, 'Books', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-01', 563, 'Toys', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 30, 'Toys', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-12', 739, 'Jewelry', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-22', 801, 'Music', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-11', 83, 'Shoes', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-06', 684, 'Books', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-06', 577, 'Baby', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-22', 263, 'Home', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-10', 855, 'Jewelry', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-06', 517, 'Health', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-03', 845, 'Garden', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-15', 173, 'Games', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-26', 462, 'Industrial', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 433, 'Baby', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-26', 479, 'Shoes', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-17', 781, 'Garden', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-18', 613, 'Kids', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-15', 286, 'Grocery', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-12', 522, 'Kids', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-30', 807, 'Home', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-23', 294, 'Clothing', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-07', 113, 'Computers', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 609, 'Industrial', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-10', 381, 'Shoes', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-28', 737, 'Beauty', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-06', 922, 'Home', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-31', 539, 'Electronics', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-18', 781, 'Toys', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-09', 686, 'Beauty', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-27', 505, 'Electronics', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-13', 29, 'Health', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-15', 331, 'Baby', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-23', 942, 'Clothing', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-18', 621, 'Outdoors', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-02', 549, 'Garden', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-03', 332, 'Electronics', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-28', 885, 'Jewelry', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-22', 907, 'Sports', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-14', 530, 'Music', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-27', 189, 'Home', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-20', 333, 'Garden', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-23', 813, 'Jewelry', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 313, 'Games', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-04', 115, 'Garden', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-11', 588, 'Tools', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-19', 491, 'Outdoors', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-27', 325, 'Grocery', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-08', 168, 'Home', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-31', 255, 'Home', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 756, 'Grocery', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-24', 546, 'Beauty', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-09', 219, 'Home', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-15', 313, 'Toys', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-29', 767, 'Health', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-18', 276, 'Electronics', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-07', 295, 'Games', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-02', 63, 'Kids', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-24', 901, 'Beauty', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-01', 131, 'Health', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-27', 342, 'Computers', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-08', 379, 'Computers', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-21', 691, 'Sports', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-13', 861, 'Kids', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-07', 209, 'Home', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-19', 559, 'Movies', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 210, 'Beauty', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-06', 685, 'Clothing', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-22', 531, 'Shoes', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-02', 959, 'Industrial', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-31', 604, 'Games', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-01', 336, 'Movies', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-13', 9, 'Automotive', 2, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-17', 73, 'Clothing', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-21', 130, 'Music', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-14', 860, 'Sports', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-20', 162, 'Industrial', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-10', 372, 'Movies', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-01', 895, 'Tools', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-03', 729, 'Baby', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-16', 698, 'Home', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-14', 438, 'Electronics', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-30', 533, 'Books', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-28', 986, 'Computers', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-25', 150, 'Movies', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-04', 182, 'Industrial', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-22', 623, 'Outdoors', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 461, 'Shoes', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 715, 'Kids', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-20', 375, 'Electronics', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-08', 583, 'Automotive', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-19', 557, 'Garden', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-04', 89, 'Games', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-13', 604, 'Computers', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-29', 510, 'Grocery', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-02', 109, 'Movies', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-13', 905, 'Jewelry', 6, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-27', 144, 'Home', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-24', 684, 'Grocery', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 523, 'Shoes', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-31', 963, 'Jewelry', 5, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-25', 847, 'Electronics', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-20', 150, 'Health', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-01', 687, 'Games', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-30', 231, 'Books', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 355, 'Electronics', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-10', 398, 'Shoes', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-21', 704, 'Toys', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-17', 531, 'Shoes', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-02', 753, 'Beauty', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-04', 538, 'Outdoors', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-27', 893, 'Books', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-11', 953, 'Home', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-02', 90, 'Kids', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 45, 'Automotive', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-25', 436, 'Music', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-07', 968, 'Home', 6, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-08', 706, 'Books', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-25', 306, 'Automotive', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-28', 606, 'Tools', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-07', 815, 'Automotive', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-20', 102, 'Home', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-01', 754, 'Computers', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 807, 'Toys', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 569, 'Garden', 7, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-02', 437, 'Computers', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-07', 820, 'Music', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-11', 87, 'Music', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 520, 'Automotive', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-23', 139, 'Beauty', 5, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-31', 723, 'Tools', 1, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-10', 199, 'Electronics', 5, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-04-13', 979, 'Automotive', 6, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-23', 492, 'Shoes', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-10-13', 725, 'Outdoors', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-26', 312, 'Home', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-17', 230, 'Home', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 285, 'Books', 7, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-25', 92, 'Electronics', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-28', 312, 'Sports', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-01-14', 45, 'Outdoors', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-27', 175, 'Kids', 2, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-17', 55, 'Outdoors', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-14', 565, 'Health', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-07', 560, 'Kids', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-09', 530, 'Baby', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-30', 348, 'Clothing', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-02-17', 450, 'Health', 2, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-06', 862, 'Clothing', 3, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-09', 947, 'Jewelry', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-12-04', 178, 'Health', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-26', 813, 'Baby', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-28', 783, 'Baby', 4, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-22', 354, 'Automotive', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-24', 49, 'Baby', 3, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-02-12', 287, 'Home', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2025-03-10', 42, 'Jewelry', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-11', 372, 'Garden', 1, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-02', 946, 'Automotive', 6, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-09', 68, 'Automotive', 2, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-08-31', 768, 'Music', 4, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-07-11', 811, 'Baby', 4, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-09-20', 688, 'Jewelry', 5, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-31', 708, 'Sports', 7, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-12', 442, 'Books', 4, 3);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-20', 526, 'Shoes', 1, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-11-20', 283, 'Movies', 1, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-05-21', 324, 'Home', 3, 1);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-03-02', 835, 'Garden', 3, 2);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-06-16', 509, 'Clothing', 7, 4);
insert into transaction (date, amount, description, category_id, user_id) values ('2024-01-30', 911, 'Home', 3, 4);
