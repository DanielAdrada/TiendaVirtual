-- PROCEDIMIENTO ALMACENADO CATEGORIA
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertCategory(IN v_nombre VARCHAR(45))
BEGIN
    INSERT INTO tbl_categoria(cat_nombre) VALUES(v_nombre);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateCategory(IN v_id INT, IN v_nombre VARCHAR(45))
BEGIN 
    UPDATE tbl_categoria
    SET cat_nombre = v_nombre
    WHERE cat_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectCategory()
BEGIN
	SELECT cat_id,cat_nombre FROM tbl_categoria;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteCategory(IN v_id INT)
BEGIN
	DELETE FROM tbl_categoria WHERE cat_id = v_id;
END//
DELIMITER ;
