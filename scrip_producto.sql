
-- insertar un producto
DELIMITER //
CREATE PROCEDURE proInsertProducto(IN v_nombre VARCHAR(50), IN v_descripcion VARCHAR(45), IN v_precio DOUBLE,
    IN v_stock INT, IN v_imagen VARCHAR(300), IN v_categoria_id INT, IN v_proveedor_id INT)
BEGIN
    INSERT INTO tbl_productos(pro_nombre,pro_descripcion,pro_precio,pro_stock,pro_imagen,tbl_categoria_cat_id,
        tbl_proveedores_prov_id)
        VALUES (v_nombre, v_descripcion, v_precio, v_stock, v_imagen, v_categoria_id, v_proveedor_id);
END//
DELIMITER ;


-- actualizar un producto
DELIMITER //
CREATE PROCEDURE proUpdateProducto(IN v_id INT, IN v_nombre VARCHAR(50), IN v_descripcion VARCHAR(45), IN v_precio DOUBLE,
    IN v_stock INT, IN v_imagen VARCHAR(300), IN v_categoria_id INT,IN v_proveedor_id INT)
BEGIN
    UPDATE tbl_productos
    SET 
        pro_nombre = v_nombre,
        pro_descripcion = v_descripcion,
        pro_precio = v_precio,
        pro_stock = v_stock,
        pro_imagen = v_imagen,
        tbl_categoria_cat_id = v_categoria_id,
        tbl_proveedores_prov_id = v_proveedor_id
    WHERE pro_id = v_id;
END//
DELIMITER ;

-- mostrar producto
DELIMITER //
CREATE PROCEDURE proSelectProducto()
BEGIN
    SELECT 
        pro_id,
        pro_nombre,
        pro_descripcion,
        pro_precio,
        pro_stock,
        pro_imagen,
        tbl_categoria_cat_id,
        tbl_proveedores_prov_id
    FROM tbl_productos;
END//
DELIMITER ;


    -- eliminar peoducto
DELIMITER //
CREATE PROCEDURE proDeleteProducto(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos
    WHERE pro_id = v_id;
END//
DELIMITER ;
