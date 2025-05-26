DELIMITER $$

CREATE PROCEDURE reservarAsientos(
    IN p_idPasajero INT,
    IN p_idVuelo INT,
    IN p_clase VARCHAR(50),
    IN p_cantidad INT
)

BEGIN 
    DECLARE v_cantidadDisponible INT DEFAULT 0;
    DECLARE v_idAsiento INT;
    DECLARE v_idReserva INT;
    DECLARE done INT DEFAULT 0;
    DECLARE v_errorMsg VARCHAR(255);

    DECLARE cur CURSOR FOR
        SELECT idAsiento
        FROM asiento
        WHERE idVuelo = p_idVuelo
          AND LOWER(clase) = LOWER(p_clase)
          AND disponible = 1
        LIMIT p_cantidad;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    --Comprobar que hay suficientes asientos
    SELECT COUNT(*) INTO v_cantidadDisponible
    FROM asiento
    WHERE idVuelo = p_idVuelo
      AND LOWER(clase) = LOWER(p_clase)
      AND disponible = 1;
       
    IF v_cantidadDisponible < p_cantidad THEN
        SET v_errorMsg = CONCAT('No hay suficientes asientos disponibles. Solo quedan ', v_cantidadDisponible, '.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_errorMsg;
    END IF;

    --Crear la reserva
    INSERT INTO reserva (fechaReserva, estado, idPasajero)
    VALUES (CURDATE(), 'Confirmada', p_idPasajero);
    SET v_idReserva = LAST_INSERT_ID();

    --Abrir el cursor
    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_idAsiento;
        IF done THEN 
            LEAVE read_loop;
        END IF;

        --Asignar el asiento a la reserva
        UPDATE asiento
        SET idReserva = v_idReserva,
            disponible = 0
        WHERE idAsiento = v_idAsiento;

    END LOOP;

    CLOSE cur;
END $$

DELIMITER ;
