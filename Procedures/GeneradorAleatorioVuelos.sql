DELIMITER $$

CREATE PROCEDURE generarVuelosAleatorios(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE ciudad_origen VARCHAR(100);
    DECLARE ciudad_destino VARCHAR(100);
    DECLARE duracion TIME;
    DECLARE codigo VARCHAR(10);
    DECLARE idAvion INT;
    DECLARE fechaVuelo DATE;
    DECLARE existe INT;

    -- Generación de origen y destino
    WHILE i < cantidad DO
        SET ciudad_origen = (SELECT nombre FROM ciudad ORDER BY RAND() LIMIT 1);
        REPEAT
            SET ciudad_destino = (SELECT nombre FROM ciudad ORDER BY RAND() LIMIT 1);
        UNTIL ciudad_destino <> ciudad_origen END REPEAT;

        -- Generación aleatoria de duración entre 1h y 10h
        SET duracion = SEC_TO_TIME(FLOOR(RAND() * (36000 - 3600 + 1)) + 3600); 

        -- Generación código de vuelo 
        REPEAT
            SET codigo = CONCAT('FL', LPAD(FLOOR(RAND() * 10000), 4, '0'));
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE codigoVuelo = codigo);
        UNTIL existe = 0 END REPEAT;

        -- Fecha aleatoria en los próximos 30 días
        SET fechaVuelo = DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND()*30) DAY);

        -- Seleccionar avión para el vuelo
        REPEAT
            SET idAvion = (SELECT idAvion FROM aviones ORDER BY RAND() LIMIT 1);
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE idAvion = idAvion AND fecha = fechaVuelo);
        UNTIL existe = 0 END REPEAT;

        -- Insertar vuelo
        INSERT INTO vuelos (fecha, origen, destino, duracion, codigoVuelo, idAvion)
        VALUES (fechaVuelo, ciudad_origen, ciudad_destino, duracion, codigo, idAvion);

        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;
