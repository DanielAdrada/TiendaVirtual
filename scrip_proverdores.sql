
 -- insertar un Proveedores
 DELIMITER //
CREATE PROCEDURE proInsertProveedor(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(45), IN v_contacto VARCHAR(15))
BEGIN
    INSERT INTO tbl_proveedores(prov_nit, prov_nombre, prov_contacto)
    VALUES(v_nit, v_nombre, v_contacto);
END//
DELIMITER ;


   --  Actualizar un Proveedor
DELIMITER //
CREATE PROCEDURE proUpdateProveedor (IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(45), IN v_contacto VARCHAR(15))
BEGIN
    UPDATE tbl_proveedores
    SET 
        prov_nit = v_nit,
        prov_nombre = v_nombre,
        prov_contacto = v_contacto
    WHERE prov_id = v_id;
END//
DELIMITER ;


-- Mostrar Proveedores
DELIMITER //
CREATE PROCEDURE proSelectProveedor()
BEGIN
    SELECT prov_id, prov_nit, prov_nombre, prov_contacto FROM tbl_proveedores;
END//
DELIMITER ;


   -- Eliminar un Proveedor
DELIMITER //
CREATE PROCEDURE proDeleteProveedor(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores
    WHERE prov_id = v_id;
END//
DELIMITER ;



