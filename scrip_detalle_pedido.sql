-- DETALLE DE PEDIDO
   --  Insertar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE procInsertDetallePedido (IN v_cantidad INT, IN v_precio_unitario INT, IN v_pedido_id INT, IN v_producto_id INT)
BEGIN
    INSERT INTO tbl_detalle_pedido(det_cantidad, det_precio_unitario, tbl_pedidos_ped_id, tbl_producto_prod_id)
    VALUES(v_cantidad, v_precio_unitario, v_pedido_id, v_producto_id);
END//
DELIMITER ;


   --  Actualizar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE procUpdateDetallePedido (IN v_det_id INT, IN v_cantidad INT, IN v_precio_unitario INT, IN v_pedido_id INT, IN v_producto_id INT)
BEGIN
    UPDATE tbl_detalle_pedido
    SET 
        det_cantidad = v_cantidad,
        det_precio_unitario = v_precio_unitario,
        tbl_pedidos_ped_id = v_pedido_id,
        tbl_producto_prod_id = v_producto_id
    WHERE det_id = v_det_id;
END//
DELIMITER ;

   
    -- Mostrar Detalles de Pedido
DELIMITER //
CREATE PROCEDURE procSelectDetallePedido()
BEGIN
    SELECT 
        det_id,
        det_cantidad,
        det_precio_unitario,
        tbl_pedidos_ped_id,
        tbl_producto_prod_id
    FROM tbl_detalle_pedido;
END//
DELIMITER ;

    -- Eliminar un Detalle de Pedido
DELIMITER //
CREATE PROCEDURE procDeleteDetallePedido (IN v_det_id INT)
BEGIN
    DELETE FROM tbl_detalle_pedido
    WHERE det_id = v_det_id;
END//
DELIMITER ;
