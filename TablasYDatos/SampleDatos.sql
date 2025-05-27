-- Paises
INSERT INTO pais (nombre) VALUES ('España');
INSERT INTO pais (nombre) VALUES ('Francia');
INSERT INTO pais (nombre) VALUES ('Italia');
INSERT INTO pais (nombre) VALUES ('Alemania');
INSERT INTO pais (nombre) VALUES ('Portugal');
INSERT INTO pais (nombre) VALUES ('Argentina');

-- Ciudades de España (idPais = 1)
INSERT INTO ciudad (nombre, idPais) VALUES ('Madrid', 1);
INSERT INTO ciudad (nombre, idPais) VALUES ('Barcelona', 1);
INSERT INTO ciudad (nombre, idPais) VALUES ('Valencia', 1);
INSERT INTO ciudad (nombre, idPais) VALUES ('Sevilla', 1);
INSERT INTO ciudad (nombre, idPais) VALUES ('Bilbao', 1);
INSERT INTO ciudad (nombre, idPais) VALUES ('Zaragoza', 1);

-- Ciudades de Francia (idPais = 2)
INSERT INTO ciudad (nombre, idPais) VALUES ('París', 2);
INSERT INTO ciudad (nombre, idPais) VALUES ('Lyon', 2);
INSERT INTO ciudad (nombre, idPais) VALUES ('Marsella', 2);
INSERT INTO ciudad (nombre, idPais) VALUES ('Toulouse', 2);
INSERT INTO ciudad (nombre, idPais) VALUES ('Niza', 2);
INSERT INTO ciudad (nombre, idPais) VALUES ('Burdeos', 2);

-- Ciudades de Italia (idPais = 3)
INSERT INTO ciudad (nombre, idPais) VALUES ('Roma', 3);
INSERT INTO ciudad (nombre, idPais) VALUES ('Milán', 3);
INSERT INTO ciudad (nombre, idPais) VALUES ('Venecia', 3);
INSERT INTO ciudad (nombre, idPais) VALUES ('Florencia', 3);
INSERT INTO ciudad (nombre, idPais) VALUES ('Nápoles', 3);
INSERT INTO ciudad (nombre, idPais) VALUES ('Turín', 3);

-- Ciudades de Alemania (idPais = 4)
INSERT INTO ciudad (nombre, idPais) VALUES ('Berlín', 4);
INSERT INTO ciudad (nombre, idPais) VALUES ('Múnich', 4);
INSERT INTO ciudad (nombre, idPais) VALUES ('Hamburgo', 4);
INSERT INTO ciudad (nombre, idPais) VALUES ('Colonia', 4);
INSERT INTO ciudad (nombre, idPais) VALUES ('Fráncfort', 4);
INSERT INTO ciudad (nombre, idPais) VALUES ('Stuttgart', 4);

-- Ciudades de Portugal (idPais = 5)
INSERT INTO ciudad (nombre, idPais) VALUES ('Lisboa', 5);
INSERT INTO ciudad (nombre, idPais) VALUES ('Oporto', 5);
INSERT INTO ciudad (nombre, idPais) VALUES ('Coímbra', 5);
INSERT INTO ciudad (nombre, idPais) VALUES ('Braga', 5);
INSERT INTO ciudad (nombre, idPais) VALUES ('Faro', 5);
INSERT INTO ciudad (nombre, idPais) VALUES ('Aveiro', 5);

-- Ciudades de Argentina (idPais = 6)
INSERT INTO ciudad (nombre, idPais) VALUES ('Buenos Aires', 6);
INSERT INTO ciudad (nombre, idPais) VALUES ('Córdoba', 6);
INSERT INTO ciudad (nombre, idPais) VALUES ('Rosario', 6);
INSERT INTO ciudad (nombre, idPais) VALUES ('Mendoza', 6);
INSERT INTO ciudad (nombre, idPais) VALUES ('La Plata', 6);
INSERT INTO ciudad (nombre, idPais) VALUES ('Salta', 6);


--Direcciones
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Mayor', '12', 45873, 5);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Avenida del Sol', '8B', 82105, 14);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Paseo del Río', '22', 19642, 1);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Luna', '7', 73091, 28);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Olivo', '45', 31587, 10);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Avenida Central', '103', 60234, 3);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Plaza Nueva', '19', 94718, 30);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Jazmín', '4A', 27365, 16);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Rosales', '78', 50129, 21);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Cedro', '13', 11982, 6);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Camino del Norte', '56', 88456, 2);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Mar', '9', 33701, 24);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Lavanda', '15B', 77654, 11);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Avenida de los Pinos', '34', 22590, 35);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Lago', '17', 59341, 9);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Bosque', '82', 14076, 18);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Avenida Andrómeda', '5C', 80234, 13);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle de las Flores', '26', 36987, 7);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Romero', '39', 61453, 36);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Paseo de la Estación', '67', 90876, 19);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Prado', '88', 25109, 4);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Ciprés', '52', 74210, 27);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle de la Estrella', '21A', 38567, 32);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Paseo del Parque', '3', 69012, 20);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Alba', '66B', 17435, 12);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Olmo', '10', 83210, 1);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Avenida del Lago', '24A', 49756, 2);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Acacia', '3B', 20345, 3);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Álamo', '42', 75890, 4);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Fresno', '19C', 10987, 5);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Nogal', '78', 56789, 6);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle de la Viña', '6', 92345, 7);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Camino Viejo', '29B', 30456, 8);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Clavel', '13', 67890, 9);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Azahar', '55A', 12345, 10);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Pez', '101', 87654, 11);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Paseo Marítimo', '17', 43210, 12);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Halcón', '88', 98765, 13);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Sur', '9C', 21098, 14);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Valle', '61', 76543, 15);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Laurel', '45', 32109, 16);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Roble', '73B', 89012, 17);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Molino', '5', 54321, 18);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Camino del Prado', '30', 90123, 19);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Aire', '68A', 10987, 20);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle de la Arena', '12', 65432, 21);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Horizonte', '20', 23456, 22);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle del Albaicín', '36C', 78901, 23);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle de los Cedros', '79', 34567, 24);
INSERT INTO direccion (calle, numero, codigoPostal, idCiudad) VALUES ('Calle Luna Nueva', '48', 89012, 25);


--Pasajeros
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('luis.martin@example.com', '+34612345678', 'Martín', 'Luis', '12345678A', '1985-03-12', 1);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('ana.garcia@example.com', '+34623456789', 'García', 'Ana', '87654321B', '1990-07-25', 2);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('carlos.lopez@example.com', '+34634567890', 'López', 'Carlos', '11223344C', '1988-11-04', 3);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('maria.fernandez@example.com', '+34645678901', 'Fernández', 'María', '99887766D', '1995-05-17', 4);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('javier.ruiz@example.com', '+34656789012', 'Ruiz', 'Javier', '55667788E', '1978-09-30', 5);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('laura.diaz@example.com', '+34667890123', 'Díaz', 'Laura', '44556677F', '1982-02-14', 6);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('david.sanchez@example.com', '+34678901234', 'Sánchez', 'David', '33445566G', '1993-06-08', 7);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('elena.moreno@example.com', '+34689012345', 'Moreno', 'Elena', '22334455H', '1987-01-22', 8);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('sergio.torres@example.com', '+34790123456', 'Torres', 'Sergio', '66778899J', '1991-10-10', 9);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('cristina.ramos@example.com', '+34701234567', 'Ramos', 'Cristina', '77889900K', '1980-04-01', 10);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('alberto.molina@example.com', '+34712345678', 'Molina', 'Alberto', '88990011L', '1994-12-19', 11);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('patricia.navarro@example.com', '+34723456789', 'Navarro', 'Patricia', '99001122M', '1989-08-05', 12);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('miguel.romero@example.com', '+34734567890', 'Romero', 'Miguel', '10111213N', '1992-03-11', 13);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('sara.gimenez@example.com', '+34745678901', 'Giménez', 'Sara', '12131415P', '1984-06-20', 14);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('jorge.vera@example.com', '+34756789012', 'Vera', 'Jorge', '14151617Q', '1979-11-27', 15);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('nuria.perez@example.com', '+34767890123', 'Pérez', 'Nuria', '16171819R', '1996-01-15', 16);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('alex.mendez@example.com', '+34778901234', 'Méndez', 'Álex', '18192021S', '1986-05-09', 17);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('raquel.herrera@example.com', '+34789012345', 'Herrera', 'Raquel', '20212223T', '1990-02-28', 18);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('fernando.leon@example.com', '+34890123456', 'León', 'Fernando', '22232425U', '1983-07-06', 19);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('noelia.reyes@example.com', '+34801234567', 'Reyes', 'Noelia', '24252627V', '1997-09-03', 20);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('rubén.luna@example.com', '+34812345678', 'Luna', 'Rubén', '26272829W', '1981-12-12', 21);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('veronica.castillo@example.com', '+34823456789', 'Castillo', 'Verónica', '28293031X', '1994-04-26', 22);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('daniel.arias@example.com', '+34834567890', 'Arias', 'Daniel', '30313233Y', '1988-08-13', 23);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('ines.cano@example.com', '+34845678901', 'Cano', 'Inés', '32333435Z', '1993-10-31', 24);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('marcos.vidal@example.com', '+34856789012', 'Vidal', 'Marcos', '34353637A', '1985-06-18', 25);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('laura.martinez@example.com', '+34867890123', 'Martínez', 'Laura', '36373839B', '1989-03-22', 26);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('pablo.gonzalez@example.com', '+34878901234', 'González', 'Pablo', '38394041C', '1992-07-14', 27);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('sofia.lopez@example.com', '+34889012345', 'López', 'Sofía', '40414243D', '1995-11-29', 28);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('daniel.sanchez@example.com', '+34890123456', 'Sánchez', 'Daniel', '42434445E', '1986-05-16', 29);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('marta.ramirez@example.com', '+34901234567', 'Ramírez', 'Marta', '44454647F', '1991-09-01', 30);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('jose.fernandez@example.com', '+34912345678', 'Fernández', 'José', '46474849G', '1983-12-19', 31);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('ana.vazquez@example.com', '+34923456789', 'Vázquez', 'Ana', '48495051H', '1988-02-11', 32);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('raul.morales@example.com', '+34934567890', 'Morales', 'Raúl', '50515253J', '1994-06-07', 33);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('silvia.cortes@example.com', '+34945678901', 'Cortés', 'Silvia', '52535455K', '1987-08-30', 34);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('fernando.santos@example.com', '+34956789012', 'Santos', 'Fernando', '54555657L', '1990-01-24', 35);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('maria.villa@example.com', '+34967890123', 'Villa', 'María', '56575859M', '1993-04-15', 36);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('luis.garcia@example.com', '+34978901234', 'García', 'Luis', '58596061N', '1985-07-02', 37);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('elena.martin@example.com', '+34989012345', 'Martín', 'Elena', '60616263P', '1991-12-13', 38);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('javier.rodriguez@example.com', '+34990123456', 'Rodríguez', 'Javier', '62636465Q', '1984-03-28', 39);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('noelia.lopez@example.com', '+34901234567', 'López', 'Noelia', '64656667R', '1996-08-19', 40);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('pablo.diaz@example.com', '+34912345678', 'Díaz', 'Pablo', '66676869S', '1987-11-07', 41);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('sofia.gomez@example.com', '+34923456789', 'Gómez', 'Sofía', '68697071T', '1990-05-23', 42);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('daniel.martinez@example.com', '+34934567890', 'Martínez', 'Daniel', '70717273U', '1982-09-15', 43);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('marta.fernandez@example.com', '+34945678901', 'Fernández', 'Marta', '72737475V', '1993-02-04', 44);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('jose.sanchez@example.com', '+34956789012', 'Sánchez', 'José', '74757677W', '1989-06-10', 45);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('ana.ruiz@example.com', '+34967890123', 'Ruiz', 'Ana', '76777879X', '1985-10-30', 46);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('raul.gonzalez@example.com', '+34978901234', 'González', 'Raúl', '78798081Y', '1992-01-21', 47);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('silvia.rodriguez@example.com', '+34989012345', 'Rodríguez', 'Silvia', '80818283Z', '1987-04-18', 48);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('fernando.lopez@example.com', '+34990123456', 'López', 'Fernando', '82838485A', '1991-09-29', 49);
INSERT INTO pasajeros (email, telefono, apellido, nombre, dni, fechaNac, idDireccion) VALUES ('maria.perez@example.com', '+34901234567', 'Pérez', 'María', '84858687B', '1984-12-11', 50);

--Trabajadores
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Ana López', 'A12345678', 'Piloto', 4500.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Luis Martínez', 'B23456789', 'Azafato', 2200.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('María González', 'C34567890', 'Controlador de tráfico', 3800.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Javier Fernández', 'D45678901', 'Mecánico', 3200.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Elena Sánchez', 'E56789012', 'Piloto', 4600.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Carlos Ruiz', 'F67890123', 'Azafato', 2100.00);	
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Laura Díaz', 'G78901234', 'Administrativo', 2500.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('David Pérez', 'H89012345', 'Mecánico', 3100.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Sara Jiménez', 'I90123456', 'Controlador de tráfico', 3900.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Miguel Torres', 'J01234567', 'Piloto', 4700.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Nuria Morales', 'K12345678', 'Azafato', 2150.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Álvaro Castro', 'L23456789', 'Mecánico', 3300.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Raquel Navarro', 'M34567890', 'Administrativo', 2600.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Pablo Gil', 'N45678901', 'Controlador de tráfico', 3700.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Isabel Romero', 'O56789012', 'Azafato', 2250.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Fernando León', 'P67890123', 'Piloto', 4800.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Marta Vega', 'Q78901234', 'Administrativo', 2550.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Jorge Ruiz', 'R89012345', 'Mecánico', 3000.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Carmen Molina', 'S90123456', 'Azafato', 2100.00);
INSERT INTO trabajadores (nombre, dni, cargo, sueldo) VALUES ('Diego Castillo', 'T01234567', 'Controlador de tráfico', 4000.00);

--Aviones
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-1234', 'Airbus A320', 180);
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-5678', 'Boeing 737', 160);
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-9101', 'Embraer E195', 120);
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-1122', 'Bombardier CRJ900', 90);
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-3344', 'Airbus A330', 250);
INSERT INTO aviones (matricula, modelo, capacidad) VALUES ('EC-5566', 'Boeing 777', 300);


