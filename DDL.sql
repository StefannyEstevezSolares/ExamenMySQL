DROP DATABASE IF EXISTS restaurante;

CREATE DATABASE restaurante;

USE restaurante;

CREATE TABLE productos(

    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    descripcion VARCHAR(150),
    precio DECIMAL(15)
    
);



CREATE TABLE ingredientes(

    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    descripcion VARCHAR(150),
    precio DECIMAL(15)
    
);



CREATE TABLE producto_has_ingredientes(

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingrediente)


);

CREATE TABLE combos(

    id_combo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(150),
    precio DECIMAL(15)

    
);


CREATE TABLE combo_has_productos(

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    FOREIGN KEY (id_combo) REFERENCES combos(id_combo)

);


CREATE TABLE clientes(

    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(150),
    precio DECIMAL(15)

    
);

CREATE TABLE pedidos(

    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    fecha DATE,
    total DECIMAL(15),
    tipo_pedido VARCHAR(45),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)

    
);

CREATE TABLE adiciones(

    id_adicion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    precio DECIMAL(15)

);


CREATE TABLE pedido_detalles(

    id_pedido_detalle INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
    FOREIGN KEY (id_combo) REFERENCES combos(id_combo)
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)

);



CREATE TABLE pedido_detalles_has_adicionales(

    FOREIGN KEY (id_pedido_detalle) REFERENCES pedido_detalles(id_pedido_detalles)
    FOREIGN KEY (id_adicion) REFERENCES adiciones(id_adicion)

);