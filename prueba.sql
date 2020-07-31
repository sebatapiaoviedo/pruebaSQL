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

- 10 facturas

    - 2 para el cliente 1, con 2 y 3 productos

        - cliente 1 con 2 productos 

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('01-02-2020', '1700', '1');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('1', '2', '1', '1000', '1000');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('1', '3', '1', '700', '700');
            INSERT 0 1

        - cliente 1 con 3 productos
    
            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('02-02-2020', '1800', '1');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('2', '2', '1', '1000', '1000');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('2', '3', '1', '700', '700');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('2', '4', '1', '100', '100');
            INSERT 0 1

    - 3 para el cliente 2, con 3, 2 y 3 productos

        - cliente 2 con 3 productos 

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('03-02-2020', '900', '2');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('3', '5', '1', '400', '400');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('3', '6', '1', '200', '200');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('3', '7', '1', '300', '300');
            INSERT 0 1

        - cliente 2 con 2 productos

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('04-02-2020', '1100', '2');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('4', '8', '1', '500', '500');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('4', '9', '1', '600', '600');
            INSERT 0 1

        - cliente 2 con 3 productos

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('05-02-2020', '1900', '2');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('5', '2', '1', '1000', '1000');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('5', '5', '1', '400', '400');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('5', '8', '1', '500', '500');
            INSERT 0 1

    - 1 para el cliente 3, con 1 producto

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('06-02-2020', '600', '3');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('6', '9', '1', '600', '600');
            INSERT 0 1

    - 4 para el cliente 4, con 2, 3, 4 y 1 producto

        - cliente 4 con 2 productos 

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('07-02-2020', '800', '4');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('7', '7', '1', '300', '300');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('7', '8', '1', '500', '500');
            INSERT 0 1
        
        - cliente 4 con 3 productos

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('08-02-2020', '1400', '4');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('8', '7', '1', '300', '300');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('8', '8', '1', '500', '500');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('8', '9', '1', '600', '600');
            INSERT 0 1

        - cliente 4 con 4 productos

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('09-02-2020', '2200', '4');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('9', '2', '1', '1000', '1000');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('9', '3', '1', '700', '700');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('9', '4', '1', '100', '100');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('9', '5', '1', '400', '400');
            INSERT 0 1

        - cliente 4 con 1 producto

            prueba=# INSERT INTO factura (fecha_factura, precio_total, id_cliente)
            prueba-# VALUES ('10-02-2020', '200', '4');
            INSERT 0 1
            prueba=# INSERT INTO detalle_factura (número_factura, id_producto, cantidad_producto, precio_unitario, valor_total_producto)
            prueba-# VALUES ('10', '6', '1', '200', '200');
            INSERT 0 1

- parte 3

    - ¿Que cliente realizó la compra más cara?

        prueba=# SELECT nombre_cliente, cliente.id_cliente FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente ORDER BY precio_total DESC LIMIT 1;
        nombre_cliente | id_cliente 
        ----------------+------------
        Javiera        |          2
        (1 row)


    - ¿Que cliente pagó sobre 100 de monto?

        prueba=# SELECT cliente.nombre_cliente, factura.precio_total FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente WHERE  factura.precio_total > '100';
        nombre_cliente | precio_total 
        ----------------+--------------
        Sebastián      | 1700
        Sebastián      | 1800
        Javiera        | 900
        Javiera        | 1100
        Javiera        | 1900
        Jenny          | 600
        Eduardo        | 800
        Eduardo        | 1400
        Eduardo        | 2200
        Eduardo        | 200
        (10 rows)

    - ¿Cuantos clientes han comprado el producto 6.

        prueba=# SELECT nombre_cliente, cliente.id_cliente FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente INNER JOIN detalle_factura ON factura.número_factura = detalle_factura.número_factura WHERE detalle_factura.id_producto = '6';
        nombre_cliente | id_cliente 
        ----------------+------------
        Javiera        |          2
        Eduardo        |          4
        (2 rows)