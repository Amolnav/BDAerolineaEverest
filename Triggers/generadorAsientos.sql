DELIMITER $$

CREATE TRIGGER generarAsientos
AFTER INSERT ON vuelos
FOR EACH ROW
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE cap_avion INT;
    DECLARE clase_asiento VARCHAR(50);
    DECLARE precio DECIMAL(10,2);
    DECLARE msg_error VARCHAR(255);

    /* Obtener capacidad del avión */
    SELECT capacidad INTO cap_avion
    FROM aviones
    WHERE idAvion = NEW.idAvion
    LIMIT 1;

    WHILE i <= cap_avion DO
        /* Asignar clase y precio */
        IF i <= cap_avion * 0.2 THEN
            SET clase_asiento = 'Primera';
            SET precio = 300.00;
        ELSEIF i <= cap_avion * 0.5 THEN
            SET clase_asiento = 'Business';
            SET precio = 200.00;
        ELSE
            SET clase_asiento = 'Turista';
            SET precio = 100.00;
        END IF;

        /* Insertar asiento */
        INSERT INTO asiento (numeroAsiento, clase, precio, disponible, idVuelo)
        VALUES (CONCAT('A', i), clase_asiento, precio, 1, NEW.idVuelo);

        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;
