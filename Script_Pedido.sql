-- Insertar pedido
DELIMITER //
CREATE PROCEDURE proInsertOrder(IN v_fecha TEXT,IN v_estado VARCHAR(45),IN v_total INT,IN v_cliente_id INT)
BEGIN
INSERT INTO tbl_pedidos(ped_fecha, ped_estado, ped_total, tbl_clientes_cli_id)
VALUES (v_fecha, v_estado, v_total, v_cliente_id);
END //
DELIMITER ;


-- SELECT PEDIDO
DELIMITER //
CREATE PROCEDURE proSelectOrder()
BEGIN
    SELECT * FROM tbl_pedidos;
END //
DELIMITER ;


-- ACTUALIZAR PEDIDO
DELIMITER //
CREATE PROCEDURE proUpdateOrder(IN v_id INT, IN v_fecha TEXT, IN v_estado VARCHAR(45), IN v_total INT, IN v_cliente_id INT)
BEGIN
UPDATE tbl_pedidos
SET 
ped_fecha = v_fecha,
ped_estado = v_estado,
ped_total = v_total,
tbl_clientes_cli_id = v_cliente_id
WHERE ped_id = v_id;
END //
DELIMITER ;

-- ELIMINAR PEDIDO 
DELIMITER //
CREATE PROCEDURE proDeleteOrder(IN v_id INT)
BEGIN
    DELETE FROM tbl_pedidos WHERE ped_id = v_ped_id;
END //
DELIMITER ;