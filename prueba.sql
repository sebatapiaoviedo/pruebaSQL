sebatapiaoviedo@sebatapiaoviedo-HP-ENVY:~$ psql
psql (12.2 (Ubuntu 12.2-4))
Type "help" for help.

sebatapiaoviedo=# CREATE DATABASE prueba;
CREATE DATABASE
sebatapiaoviedo=# \c prueba;
You are now connected to database "prueba" as user "sebatapiaoviedo".
prueba=# CREATE TABLE categoría (
prueba(# id_categoría SERIAL PRIMARY KEY,
prueba(# nombre_categoría VARCHAR,
prueba(# descripción_categoría VARCHAR );
CREATE TABLE
prueba=# CREATE TABLE cliente (
prueba(# id_cliente SERIAL PRIMARY KEY,
prueba(# nombre_cliente VARCHAR,
prueba(# rut_cliente VARCHAR,
prueba(# dirección_cliente VARCHAR );
CREATE TABLE
prueba=# CREATE TABLE factura (
prueba(# número_factura SERIAL PRIMARY KEY,
prueba(# fecha_factura DATE,
prueba(# subtotal VARCHAR,
prueba(# iva VARCHAR,
prueba(# precio_total VARCHAR,
prueba(# id_cliente INT,
prueba(# FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente) );
CREATE TABLE
prueba=# CREATE TABLE producto (
prueba(# id_producto SERIAL PRIMARY KEY,
prueba(# nombre_producto VARCHAR,
prueba(# descripción_producto VARCHAR,
prueba(# precio_unitario VARCHAR,
prueba(# id_categoría INT,
prueba(# FOREIGN KEY (id_categoría) REFERENCES categoría (id_categoría) );
CREATE TABLE
prueba=# CREATE TABLE detalle_factura (
prueba(# id_detalle_factura SERIAL PRIMARY KEY,
prueba(# número_factura INT,
prueba(# id_producto INT,
prueba(# cantidad_producto VARCHAR,
prueba(# precio_unitario VARCHAR,
prueba(# valor_total_producto VARCHAR,
prueba(# FOREIGN KEY (número_factura) REFERENCES factura (número_factura),
prueba(# FOREIGN KEY (id_producto) REFERENCES producto (id_producto) );
CREATE TABLE
prueba=# 

- parte 2: creando, insertar

- 5 clientes

prueba=# INSERT INTO cliente (nombre_cliente, rut_cliente, dirección_cliente)
prueba-# VALUES ('Sebastián', '18.662.268-5', 'La Coruña 0505');
INSERT 0 1
prueba=# INSERT INTO cliente (nombre_cliente, rut_cliente, dirección_cliente)
prueba-# VALUES ('Javiera', '20.245.175-6', 'La Coruña 0505');
INSERT 0 1
prueba=# INSERT INTO cliente (nombre_cliente, rut_cliente, dirección_cliente)
prueba-# VALUES ('Jenny', '19.512.812-k', 'Los Halcones 1021');
INSERT 0 1
prueba=# INSERT INTO cliente (nombre_cliente, rut_cliente, dirección_cliente)
prueba-# VALUES ('Eduardo', '9.616.082-8', 'Esperanza 91 casa E');
INSERT 0 1
prueba=# INSERT INTO cliente (nombre_cliente, rut_cliente, dirección_cliente)
prueba-# VALUES ('Leonardo', '10.231.082-9', 'Santa Isabel 77');
INSERT 0 1
prueba=# 

- 3 categorías

prueba=# INSERT INTO categoría (nombre_categoría, descripción_categoría)
prueba-# VALUES ('frutos secos', 'piwen');
INSERT 0 1
prueba=# INSERT INTO categoría (nombre_categoría, descripción_categoría)
prueba-# VALUES ('vegan', 'eco care');
INSERT 0 1
prueba=# INSERT INTO categoría (nombre_categoría, descripción_categoría)
prueba-# VALUES ('sin gluten', 'regional food');
INSERT 0 1
prueba=# 

- 8 productos

prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('almendra', 'de fina selección', '1000', '1');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('nuez', 'tostada', '700', '1');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('maní', 'sin sal', '100', '1');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('hamburguesa', 'de porotos', '400', '2');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('bombón', 'sabores varios', '200', '2');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('b12', 'en polvo', '300', '2');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('tallarines', 'de chía', '500', '3');
INSERT 0 1
prueba=# INSERT INTO producto (nombre_producto, descripción_producto, precio_unitario, id_categoría)
prueba-# VALUES ('pan masa madre', 'de hamburguesa', '600', '3');
INSERT 0 1
prueba=# 
