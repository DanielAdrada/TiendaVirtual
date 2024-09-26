-- PRODUCTO   
      -- insertar un producto
DELIMITER //
CREATE PROCEDURE procInsertProducto (IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(45), IN v_precio DOUBLE,
    IN v_stock INT, IN v_imagen VARCHAR(300), IN v_categoria_id INT, IN v_proveedor_id INT)
BEGIN
    INSERT INTO tbl_producto (
        prod_nombre,
        prod_descripcion,
        prod_precio,
        prod_stock,
        prod_imagen,
        tbl_categorias_cat_id,
        tbl_proveedores_prov_id1)
        VALUES (v_nombre, v_descripcion, v_precio, v_stock, v_imagen, v_categoria_id, v_proveedor_id);
END//
DELIMITER ;

    -- actualizar un producto
DELIMITER //
CREATE PROCEDURE procUpdateProducto (IN v_id INT, IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(45), IN v_precio DOUBLE,
    IN v_stock INT, IN v_imagen VARCHAR(300), IN v_categoria_id INT,IN v_proveedor_id INT)
BEGIN
    UPDATE tbl_producto
    SET 
        prod_nombre = v_nombre,
        prod_descripcion = v_descripcion,
        prod_precio = v_precio,
        prod_stock = v_stock,
        prod_imagen = v_imagen,
        tbl_categorias_cat_id = v_categoria_id,
        tbl_proveedores_prov_id1 = v_proveedor_id
    WHERE prod_id = v_id;
END//
DELIMITER ;

     -- mostrar producto
DELIMITER //
CREATE PROCEDURE procSelectProducto()
BEGIN
    SELECT 
        p.prod_id,
        p.prod_nombre,
        p.prod_descripcion,
        p.prod_precio,
        p.prod_stock,
        p.prod_imagen,
        c.cat_nombre AS categoria,
        prov.prov_nombre AS proveedor
    FROM tbl_producto p
    LEFT JOIN tbl_categorias c ON p.tbl_categorias_cat_id = c.cat_id
    LEFT JOIN tbl_proveedores prov ON p.tbl_proveedores_prov_id1 = prov.prov_id;
END//
DELIMITER ;


    -- eliminar peoducto
DELIMITER //
CREATE PROCEDURE procDeleteProducto (IN v_id INT)
BEGIN
    DELETE FROM tbl_producto
    WHERE prod_id = v_id;
END//
DELIMITER ;
