DELIMITER $$
CREATE TRIGGER generarAsientos
AFTER INSERT ON vuelos
FOR EACH ROW
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE capacidad INT;
    DECLARE clase_asiento VARCHAR(50);
    DECLARE precio DECIMAL(10,2);

    --Capacidad del avion
    SELECT capacidad INTO capacidad
    FROM aviones
    WHERE idAvion = NEW.idAvion;

    WHILE i <= capacidad DO
        -- Asignar clase y precio
        IF i <= capacidad * 0.2 THEN
            SET clase_asiento = 'Primera';
            SET precio = 300.00;
        ELSEIF i <= capacidad * 0.5 THEN
            SET clase_asiento = 'Business';
            SET precio = 200.00;
        ELSE
            SET clase_asiento = 'Turista';
            SET precio = 100.00;
        END IF;

        --Insertar Asiento
         INSERT INTO asiento (numeroAsiento, clase, precio, disponible, idVuelo)
         VALUES (CONCAT('A', i), clase_asiento, precio, TRUE, NEW.idVuelo);

    SET i = i+1;
    END WHILE;

END$$
DELIMITER ;