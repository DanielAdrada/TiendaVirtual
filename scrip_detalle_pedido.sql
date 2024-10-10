
   --  Insertar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE proInsertDetallePedido(IN v_precio_unitario INT,IN v_cantidad INT, IN v_producto_id INT, IN v_pedido_id INT)
BEGIN
    INSERT INTO tbl_detalle_pedido(det_precio_unitario, det_cantidad,tbl_productos_pro_id, tbl_pedidos_ped_id)
    VALUES(v_precio_unitario, v_cantidad, v_producto_id, v_pedido_id);
END//
DELIMITER ;


   --  Actualizar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE proUpdateDetallePedido(IN v_id INT, IN v_precio_unitario INT,IN v_cantidad INT, IN v_producto_id INT, IN v_pedido_id INT)
BEGIN
    UPDATE tbl_detalle_pedido
    SET 
        det_precio_unitario = v_precio_unitario,
        det_cantidad = v_cantidad,
        tbl_productos_pro_id = v_producto_id,
        tbl_pedidos_ped_id = v_pedido_id
    WHERE det_id = v_id;
END//
DELIMITER ;

   
    -- Mostrar Detalles de Pedido
DELIMITER //
CREATE PROCEDURE proSelectDetallePedido()
BEGIN
    SELECT 
        det_id,
        det_precio_unitario,
        det_cantidad,
        tbl_productos_pro_id,
        tbl_pedidos_ped_id
    FROM tbl_detalle_pedido;
END//
DELIMITER ;

    -- Eliminar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE proDeleteDetallePedido (IN v_id INT)
BEGIN
    DELETE FROM tbl_detalle_pedido
    WHERE det_id = v_id;
END//
DELIMITER ;
