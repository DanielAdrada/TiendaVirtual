-- PROCEDIMIENTO ALMACENADO COMENTARIOS
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertComments(IN v_comentario VARCHAR(100), IN v_fecha TEXT, IN v_pro_id INT, IN v_cli_id INT)
BEGIN
    INSERT INTO tbl_comentarios(com_comentario,com_fecha,tbl_productos_pro_id,tbl_clientes_cli_id)
    VALUES(v_comentario,v_fecha,v_pro_id,v_cli_id);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateComments(IN v_id INT, IN v_comentario VARCHAR(100), IN v_fecha TEXT, IN v_pro_id INT, IN v_cli_id INT)
BEGIN 
    UPDATE tbl_comentarios
    SET com_comentario = v_comentario, com_fecha = v_fecha, tbl_productos_pro_id = v_pro_id, tbl_clientes_cli_id = v_cli_id
    WHERE com_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectComments()
BEGIN
	SELECT com_id,com_comentario,com_fecha,tbl_productos_pro_id,tbl_clientes_cli_id
    FROM tbl_comentarios;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteComments(IN v_id INT)
BEGIN
	DELETE FROM tbl_comentarios WHERE com_id = v_id;
END//
DELIMITER ;