-- PROCEDIMIENTO ALMACENADO CATEGORIA
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertCart(IN v_cantidad INT, v_pro_id INT, IN v_cli_id INT)
BEGIN
    INSERT INTO tbl_carrito_compras(car_cantidad,tbl_productos_pro_id,tbl_clientes_cli_id)
    VALUES(v_cantidad,v_pro_id,v_cli_id);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateCart(IN v_id INT, IN v_cantidad INT, v_pro_id INT, IN v_cli_id INT)
BEGIN 
    UPDATE tbl_carrito_compras
    SET car_cantidad = v_cantidad, tbl_productos_pro_id = v_pro_id, tbl_clientes_cli_id = v_cli_id
    WHERE car_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectCart()
BEGIN
	SELECT car_id,car_cantidad,tbl_productos_pro_id,tbl_clientes_cli_id
    FROM tbl_carrito_compras;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteCart(IN v_id INT)
BEGIN
	DELETE FROM tbl_carrito_compras WHERE car_id = v_id;
END//
DELIMITER ;
