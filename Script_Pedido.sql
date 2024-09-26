-- TABLA PEDIDO CRUD

-- Insertar pedido
DELIMITER //
CREATE PROCEDURE tienInsertOrder(
IN v_ped_fecha VARCHAR(45),
IN v_ped_estado VARCHAR(45),
IN v_ped_total INT,
IN v_tbl_cliente_clien_id INT
)
BEGIN
INSERT INTO tbl_pedidos (ped_fecha, ped_estado, ped_total, tbl_cliente_clien_id)
VALUES (v_ped_fecha, v_ped_estado, v_ped_total, v_tbl_cliente_clien_id);
END //
DELIMITER ;


-- SELECT PEDIDO
DELIMITER //
CREATE PROCEDURE tienSelectOrder()
BEGIN
    SELECT * FROM tbl_pedidos;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE tienSelectOrderID (IN v_ped_id INT)
BEGIN
    SELECT * FROM tbl_pedidos WHERE ped_id = v_ped_id;
END //
DELIMITER ;



-- ACTUALIZAR PEDIDO
DELIMITER //
CREATE PROCEDURE tienUpdateOrder(
IN v_ped_id INT,
IN v_ped_fecha VARCHAR(30),
IN v_ped_estado VARCHAR(45),
IN v_ped_total DECIMAL (10,2),
IN v_tbl_cliente_clien_id INT
)
BEGIN
UPDATE tbl_pedidos
SET ped_fecha = v_ped_fecha,
ped_estado = v_ped_estado,
ped_total = v_ped_total,
tbl_cliente_clien_id = v_tbl_cliente_clien_id
WHERE ped_id = v_ped_id;
END //
DELIMITER ;

-- ELIMINAR PEDIDO 
DELIMITER //
CREATE PROCEDURE tienDeleteOrder (IN v_ped_id INT)
BEGIN
    DELETE FROM tbl_pedidos WHERE ped_id = v_ped_id;
END //
DELIMITER ;