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
(4, 2024, 1),
(4, 2024, 2);

INSERT INTO "budgetcategorytype" (percentage, category_type_id, budget_id) VALUES
(50, 1, 1),  -- 50% de los ingresos
(20, 2, 1),  -- 20% para ahorros
(25, 3, 1),  -- 25% para necesidades
(5, 4, 1),   -- 5% para deseos

(60, 1, 2),  -- 60% de los ingresos
(15, 2, 2),  -- 15% para ahorros
(20, 3, 2),  -- 20% para necesidades
(5, 4, 2);   -- 5% para deseos

INSERT INTO "transaction" (date, amount, description, category_id, user_id) VALUES
-- Transacciones de John Doe
('2024-04-01', 4000.00, 'April Salary', 1, 1),
('2024-04-05', -500.00, 'Paid Rent', 4, 1),
('2024-04-10', -150.00, 'Groceries Shopping', 5, 1),
('2024-04-15', -100.00, 'Movie Night', 6, 1),
('2024-04-20', -200.00, 'Bought New Shoes', 7, 1),

-- Transacciones de Jane Smith
('2024-04-02', 5000.00, 'April Salary', 1, 2),
('2024-04-06', -700.00, 'Apartment Rent', 4, 2),
('2024-04-12', -180.00, 'Grocery Shopping', 5, 2),
('2024-04-17', -120.00, 'Concert Ticket', 6, 2),
('2024-04-22', -250.00, 'New Clothes', 7, 2);
