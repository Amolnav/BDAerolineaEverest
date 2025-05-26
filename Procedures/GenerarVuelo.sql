DELIMITER $$

CREATE PROCEDURE generarVuelo(
    IN ciudad_origen_in VARCHAR(100),
    IN ciudad_destino_in VARCHAR(100),
    IN fechaVuelo_in DATE,
    IN AvionId_in INT
)
BEGIN
    DECLARE duracion TIME;
    DECLARE codigo VARCHAR(10);
    DECLARE existe INT;
        
        -- Comprobar origen y destino son distintos
            IF (ciudad_destino_in = ciudad_origen_in)
            THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'El origen y el destino no pueden ser el mismo';
            END IF;
        -- Comprobar si el avión ya está asignado ese día
        IF EXISTS (
            SELECT 1 FROM vuelos 
            WHERE fecha = fechaVuelo_in AND idAvion = AvionId_in
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El avión ya está asignado a otro vuelo en esa fecha';
        END IF;

        -- Generación aleatoria de duración entre 1h y 10h
        SET duracion = SEC_TO_TIME(FLOOR(RAND() * (36000 - 3600 + 1)) + 3600); 

        -- Generación código de vuelo 
        REPEAT
            SET codigo = CONCAT('FL', LPAD(FLOOR(RAND() * 10000), 4, '0'));
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE codigoVuelo = codigo);
        UNTIL existe = 0 END REPEAT;

        -- Insertar vuelo
    INSERT INTO vuelos (fecha, origen, destino, duracion, codigoVuelo, idAvion)
    VALUES (fechaVuelo_in, ciudad_origen_in, ciudad_destino_in, duracion, codigo, AvionId_in);
END $$

DELIMITER ;
