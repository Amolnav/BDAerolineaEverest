DELIMITER $$

CREATE TRIGGER asignarTrabajadores
AFTER INSERT ON vuelos
FOR EACH ROW
BEGIN
    -- Insertar 3 trabajadores aleatorios que no tengan vuelo ese día
    INSERT INTO vuelosTrabajadores (idVuelo, idTrabajador)
    SELECT NEW.idVuelo, t.idTrabajador
    FROM trabajadores t
    WHERE t.idTrabajador NOT IN (
        SELECT vt.idTrabajador
        FROM vuelosTrabajadores vt
        JOIN vuelos v ON vt.idVuelo = v.idVuelo
        WHERE v.fecha = NEW.fecha
    )
    ORDER BY RAND()
    LIMIT 3;
END$$

DELIMITER ;
