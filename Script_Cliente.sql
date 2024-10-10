-- TABLA CLIENTE CRUD

-- insertar cliente
DELIMITER //
CREATE PROCEDURE proInsertClient(IN v_nombre VARCHAR(45),IN v_telefono VARCHAR(15),IN v_direccion TEXT)
BEGIN
INSERT INTO tbl_clientes (cli_nombre, cli_telefono, cli_direccion)
VALUES (v_nombre, v_telefono, v_direccion);
END //
DELIMITER ;


-- seleccionar cliente
DELIMITER //
CREATE PROCEDURE proSelectClients()
BEGIN
    SELECT * FROM tbl_clientes;
END //
DELIMITER ;




-- actualizar cliente
DELIMITER //
CREATE PROCEDURE proUpdateClient(IN v_id INT,IN v_nombre VARCHAR(45),IN v_telefono VARCHAR(15),IN v_direccion TEXT)
BEGIN
    UPDATE tbl_clientes
    SET cli_nombre = v_nombre,cli_telefono = v_telefono,cli_direccion = v_direccion
    WHERE cli_id = v_id;
END //
DELIMITER ;

-- eliminar cliente
DELIMITER //
CREATE PROCEDURE proDeleteClient(IN v_id INT)
BEGIN
    DELETE FROM tbl_clientes WHERE cli_id = v_id;
END //
DELIMITER ;
