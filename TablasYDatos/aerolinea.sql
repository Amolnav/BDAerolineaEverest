-- Base de datos para Aerolínea
CREATE DATABASE IF NOT EXISTS aerolinea;
USE aerolinea;

-- Tabla: pais
CREATE TABLE pais (
    idPais INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla: ciudad
CREATE TABLE ciudad (
    idCiudad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    idPais INT NOT NULL,
    FOREIGN KEY (idPais) REFERENCES pais(idPais)
);

-- Tabla: direccion
CREATE TABLE direccion (
    idDireccion INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    codigoPostal INT(10) NOT NULL,
    idCiudad INT NOT NULL,
    FOREIGN KEY (idCiudad) REFERENCES ciudad(idCiudad)
);

-- Tabla: pasajeros
CREATE TABLE pasajeros (
    idPasajero INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    apellido VARCHAR(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    dni VARCHAR(20) NOT NULL UNIQUE,
    fechaNac DATE NOT NULL,
    idDireccion INT NOT NULL,
    FOREIGN KEY (idDireccion) REFERENCES direccion(idDireccion)
);

-- Tabla: reserva
CREATE TABLE reserva (
    idReserva INT AUTO_INCREMENT PRIMARY KEY,
    fechaReserva DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    idPasajero INT NOT NULL,
    FOREIGN KEY (idPasajero) REFERENCES pasajeros(idPasajero)
);

-- Tabla: factura
CREATE TABLE factura (
    idFactura INT AUTO_INCREMENT PRIMARY KEY,
    metodoPago VARCHAR(50) NOT NULL,
    fechaEmision DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL DEFAULT 0,
    idReserva INT NOT NULL,
    FOREIGN KEY (idReserva) REFERENCES reserva(idReserva)
);

-- Tabla: aviones
CREATE TABLE aviones (
    idAvion INT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL
);

-- Tabla: vuelos
CREATE TABLE vuelos (
    idVuelo INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    origen VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    duracion TIME NOT NULL,
    codigoVuelo VARCHAR(20) NOT NULL,
    idAvion INT NOT NULL,
    FOREIGN KEY (idAvion) REFERENCES aviones(idAvion)
);

-- Tabla: asiento
CREATE TABLE asiento (
    numeroAsiento VARCHAR(10) NOT NULL,
    clase VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    disponible BOOLEAN NOT NULL DEFAULT TRUE,
    idReserva INT DEFAULT NULL,
    idVuelo INT NOT NULL,
    FOREIGN KEY (idReserva) REFERENCES reserva(idReserva),
    FOREIGN KEY (idVuelo) REFERENCES vuelos(idVuelo)
    PRIMARY KEY (numeroAsiento, idReserva)
);

-- Tabla: trabajadores
CREATE TABLE trabajadores (
    idTrabajador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dni VARCHAR(20) NOT NULL UNIQUE,
    cargo VARCHAR(50) NOT NULL,
    sueldo DECIMAL(10,2) NOT NULL
);

-- Tabla: vuelosTrabajadores
CREATE TABLE vuelosTrabajadores (
    idVuelo INT NOT NULL,
    idTrabajador INT NOT NULL,
    PRIMARY KEY (idVuelo, idTrabajador),
    FOREIGN KEY (idVuelo) REFERENCES vuelos(idVuelo),
    FOREIGN KEY (idTrabajador) REFERENCES trabajadores(idTrabajador)
);
