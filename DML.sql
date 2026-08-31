INSERT INTO productos
(id_producto, nombre, categoria, descripcion, precio)VALUES
(1, 'Hamburguesa Clasica', 'Hamburguesas', 'Hamburguesa con carne, queso y vegetales', 45.00),
(2, 'Hamburguesa Doble', 'Hamburguesas', 'Hamburguesa con doble carne y queso', 60.00),
(3, 'Pizza Pepperoni', 'Pizzas', 'Pizza con salsa de tomate, queso y pepperoni', 80.00),
(4, 'Pizza Vegetariana', 'Pizzas', 'Pizza con vegetales y queso mozzarella', 75.00),
(5, 'Pasta Alfredo', 'Pastas', 'Pasta con salsa cremosa Alfredo', 65.00),

INSERT INTO ingredientes
(id_ingrediente, nombre, categoria, descripcion, precio)
VALUES
(1, 'Carne de Res', 'Carnes', 'Carne para hamburguesas', 20.00),
(2, 'Pan de Hamburguesa', 'Panaderia', 'Pan para hamburguesa', 5.00),
(3, 'Queso Mozzarella', 'Lacteos', 'Queso mozzarella', 10.00),
(4, 'Pepperoni', 'Embutidos', 'Rodajas de pepperoni', 15.00);


INSERT INTO combos
(id_combo, nombre, descripcion, precio)VALUES
(1, 'Combo Clasico', 'Hamburguesa clasica con bebida', 55.00),
(2, 'Combo Doble', 'Hamburguesa doble con papas', 75.00),
(3, 'Combo Pizza', 'Pizza pepperoni con bebida', 95.00),
(4, 'Combo Pasta', 'Pasta Alfredo con bebida', 80.00),
(5, 'Combo Familiar', 'Pizza y productos para compartir', 180.00);


INSERT INTO clientes
(id_cliente, nombre, descripcion, precio)VALUES
(1, 'Ana Lopez', 'Cliente frecuente', 0.00),
(2, 'Carlos Ramirez', 'Cliente nuevo', 0.00),
(3, 'Maria Gonzalez', 'Cliente frecuente', 0.00),


INSERT INTO combos
(id_combo,nombre,descripcion,precio)VALUES
(1,'Combo Pizza Pepperoni','Pizza Pepperoni y Coca Cola',95.00),
(2,'Combo Panzarotti','Panzarotti de carne y Pepsi',55.00),
(3,'Combo Familiar','Dos pizzas y bebidas',190.00),
(4,'Combo Pizza Hawaiana','Pizza Hawaiana y limonada',103.00),
(5,'Combo Pareja','Pizza Margarita, bebida y postre',110.00);



INSERT INTO clientes
(id_cliente,nombre,descripcion,precio)VALUES
(1,'Ana Lopez','Cliente frecuente',0.00),
(2,'Carlos Ramirez','Cliente nuevo',0.00),
(3,'Maria Gonzalez','Cliente frecuente',0.00),
(4,'Juan Perez','Cliente ocasional',0.00),
(5,'Sofia Martinez','Cliente frecuente',0.00),


INSERT INTO pedidos
(id_pedido,nombre,fecha,total,tipo_pedido,id_cliente)VALUES
(1,'Pedido 001','2026-08-01',95.00,'Para llevar',1),
(2,'Pedido 002','2026-08-02',55.00,'En restaurante',2),
(3,'Pedido 003','2026-08-03',190.00,'Para llevar',3),
(4,'Pedido 004','2026-08-04',80.00,'En restaurante',1),
(5,'Pedido 005','2026-08-05',110.00,'Para llevar',4),
(6,'Pedido 006','2026-08-06',103.00,'En restaurante',5),
(7,'Pedido 007','2026-08-07',115.00,'Para llevar',6),
(8,'Pedido 008','2026-08-08',95.00,'En restaurante',1),
(9,'Pedido 009','2026-08-09',75.00,'Para llevar',7),


INSERT INTO adiciones
(id_adicion,nombre,precio)VALUES
(1,'Queso Extra',8.00),
(2,'Carne Extra',15.00),
(3,'Pollo Extra',12.00),
(4,'Pepperoni Extra',10.00),

