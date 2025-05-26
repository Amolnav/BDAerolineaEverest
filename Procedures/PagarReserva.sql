DELIMITER $$

CREATE PROCEDURE pagarReserva(
    IN p_idReserva INT,
    IN p_metodoPago VARCHAR(50)
)
BEGIN
    DECLARE v_total DECIMAL(10,2);
    DECLARE v_estado VARCHAR(50);

    /* Comprobar si la reserva ya está pagada */
    SELECT estado INTO v_estado
    FROM reserva
    WHERE idReserva = p_idReserva;

    IF v_estado = 'Pagada' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La reserva ya está pagada.';
    END IF;

    /* Calcular total de la reserva (sumar precios de asientos) */
    SELECT SUM(a.precio) INTO v_total
    FROM asiento a
    WHERE a.idReserva = p_idReserva;

    /* Crear factura */
    INSERT INTO factura (metodoPago, fechaEmision, total, idReserva)
    VALUES (p_metodoPago, CURDATE(), v_total, p_idReserva);

    /* Cambiar estado de la reserva a 'Pagada' */
    UPDATE reserva
    SET estado = 'Pagada'
    WHERE idReserva = p_idReserva;

    /* Mostrar resumen */
    SELECT 
        CONCAT(p.nombre, ' ', p.apellido) AS nombreCliente,
        GROUP_CONCAT(a.numeroAsiento ORDER BY a.numeroAsiento SEPARATOR ', ') AS asientosComprados,
        r.idReserva,
        v_total AS precioTotal,
        f.idFactura
    FROM reserva r
    JOIN pasajeros p ON r.idPasajero = p.idPasajero
    JOIN asiento a ON a.idReserva = r.idReserva
    JOIN factura f ON f.idReserva = r.idReserva
    WHERE r.idReserva = p_idReserva
    GROUP BY p.nombre, p.apellido, r.idReserva, f.idFactura;

END$$

DELIMITER ;
