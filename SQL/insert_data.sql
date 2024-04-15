-- Insertar datos en la tabla ciudades
INSERT INTO ciudades (ciud_nombre) VALUES ('New York');
INSERT INTO ciudades (ciud_nombre) VALUES ('Los Angeles');
INSERT INTO ciudades (ciud_nombre) VALUES ('Chicago');
INSERT INTO ciudades (ciud_nombre) VALUES ('Houston');
INSERT INTO ciudades (ciud_nombre) VALUES ('Miami');
 
 
-- Insertar datos en la tabla personas
INSERT INTO personas (dir_tel, dir_tipo_tel, dir_nombre, dir_direccion, dir_ciud_id)
VALUES ('555-123-4567', 'Casa', 'John Smith', '123 Main St, Apt 101', 1);
 
INSERT INTO personas (dir_tel, dir_tipo_tel, dir_nombre, dir_direccion, dir_ciud_id)
VALUES ('323-987-6543', 'Móvil', 'Jessica Johnson', '456 Elm St, Unit 205', 2);
 
INSERT INTO personas (dir_tel, dir_tipo_tel, dir_nombre, dir_direccion, dir_ciud_id)
VALUES ('312-555-7890', 'Trabajo', 'Michael Davis', '789 Oak St, Suite 500', 3);
 
INSERT INTO personas (dir_tel, dir_tipo_tel, dir_nombre, dir_direccion, dir_ciud_id)
VALUES ('713-222-8888', 'Casa', 'Maria Gonzalez', '456 Pine St, Apt 303', 4);
 
INSERT INTO personas (dir_tel, dir_tipo_tel, dir_nombre, dir_direccion, dir_ciud_id)
VALUES ('305-777-9999', 'Móvil', 'Carlos Martinez', '789 Beach Blvd, Unit 100', 5);

SELECT dir_nombre, dir_direccion, dir_ciud_id FROM PERSONAS;