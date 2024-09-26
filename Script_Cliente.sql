-- TABLA CLIENTE CRUD

-- insertar cliente
DELIMITER //
CREATE PROCEDURE tienInsertClient(
IN v_nombre VARCHAR(45),
IN v_telefono VARCHAR(45),
IN v_direccion VARCHAR(45)
)
BEGIN
INSERT INTO tbl_cliente (clien_nombre, clien_telefono, clien_direccion)
VALUES (v_nombre, v_telefono, v_direccion);
END //
DELIMITER ;


-- seleccionar cliente
DELIMITER //
CREATE PROCEDURE tienSelectClients()
BEGIN
    SELECT * FROM tbl_cliente;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE tienSelectClientID (IN v_clien_id INT)
BEGIN
    SELECT * FROM tbl_cliente WHERE clien_id = v_clien_id;
END //
DELIMITER ;


-- actualizar cliente
DELIMITER //
CREATE PROCEDURE tienUpdateClient(
IN v_clien_id INT,
IN v_nombre VARCHAR(45),
IN v_telefono VARCHAR(45),
IN v_direccion VARCHAR(45)
)
BEGIN
    UPDATE tbl_cliente
    SET clien_nombre = v_nombre,
    clien_telefono = v_telefono,
    clien_direccion = v_direccion
    WHERE clien_id = v_clien_id;
END //
DELIMITER ;

-- eliminar cliente
DELIMITER //
CREATE PROCEDURE tienDeleteClient(IN v_clien_id INT)
BEGIN
    DELETE FROM tbl_cliente WHERE clien_id = v_clien_id;
END //
DELIMITER ;
