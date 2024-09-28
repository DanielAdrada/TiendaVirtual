-- PROCEDIMIENTO ALMACENADO USUARIOS
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertUsers(IN v_correo VARCHAR(90), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(45), IN v_rol VARCHAR(45))
BEGIN
    INSERT INTO tbl_usuarios(usu_correo, usu_contrasena, usu_salt, usu_estado, usu_rol)
    VALUES(v_correo, v_contrasena, v_salt, v_estado, v_rol);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateUsers(IN v_id INT, IN v_correo VARCHAR(90), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(45), IN v_rol VARCHAR(45))
BEGIN 
    UPDATE tbl_usuarios
    SET usu_correo = v_correo, usu_contrasena = v_contrasena, usu_salt = v_salt, usu_estado = v_estado, usu_rol = v_rol
    WHERE usu_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectUserss()
BEGIN
	SELECT usu_id, usu_correo, usu_contrasena, usu_salt, usu_estado, usu_rol
    FROM tbl_usuarios;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteUsers(IN v_id INT)
BEGIN
	DELETE FROM tbl_usuarios WHERE usu_id = v_id;
END//
DELIMITER ;