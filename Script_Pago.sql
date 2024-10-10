

-- INSERTAR PAGO
DELIMITER //
CREATE PROCEDURE proInsertPay(IN v_monto DOUBLE,IN v_metodo_pago VARCHAR(45),IN v_fecha TEXT,IN v_pedidos_id INT)
BEGIN
INSERT INTO tbl_pagos (pag_monto, pag_fecha, pag_met_pago, tbl_pedidos_ped_id)
VALUES (v_monto, v_fecha, v_metodo_pago, v_pedidos_id);
END //
DELIMITER ;


-- SELECT PAGO
DELIMITER //
CREATE PROCEDURE proSelectPay()
BEGIN
    SELECT * FROM tbl_pagos;
END //
DELIMITER ;


-- ACTUALIZAR PAGO 
DELIMITER //
CREATE PROCEDURE proUpdatePay(IN v_id INT,IN v_monto DOUBLE,IN v_metodo_pago VARCHAR(45),IN v_fecha TEXT,IN v_pedidos_id INT)
BEGIN
UPDATE tbl_pagos
SET 
pag_monto = v_monto,
pag_met_pago = v_metodo_pago,
pag_fecha = v_fecha,
tbl_pedidos_ped_id = v_pedidos_id
WHERE pag_id = v_id;
END //
DELIMITER ;


-- ELIMINAR PAGO
DELIMITER //
CREATE PROCEDURE proDeletePay(IN v_id INT)
BEGIN
    DELETE FROM tbl_pagos WHERE pag_id = v_id;
END //
DELIMITER ;
