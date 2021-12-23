CREATE TABLE IF NOT EXISTS sucursal(
    idSucursal INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(30) NOT NULL,
    gerente VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS consultorio(
    idConsultorio INT PRIMARY KEY AUTO_INCREMENT,
    espacio INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS sucursalConsultorio(
    idSucursalConsultorio INT PRIMARY KEY AUTO_INCREMENT,
    idSucursal INT NOT NULL,
    idConsultorio INT NOT NULL,
    FOREIGN KEY(idSucursal) REFERENCES sucursal(idSucursal),
    FOREIGN KEY(idConsultorio) REFERENCES consultorio(idConsultorio)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS medico(
    rfc VARCHAR(13) PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    primerApellido VARCHAR(20) NOT NULL,
    segundoApellido VARCHAR(20) NOT NULL,
    curp VARCHAR(18) NOT NULL,
    cedula INT(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono INT(10) NOT NULL,
    turno INT(1) NOT NULL,
    idSucursal INT NOT NULL,
    FOREIGN KEY(idSucursal) REFERENCES sucursal(idSucursal)
)ENGINE=InnoDB;

CREATE TABLE estado(
    idEstado INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(25) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE municipio(
    idMunicipio INT PRIMARY KEY AUTO_INCREMENT,
    municipio VARCHAR(30) NOT NULL,
    idEstado INT NOT NULL,
    FOREIGN KEY(idEstado) REFERENCES estado(idEstado)
)ENGINE=InnoDB;

CREATE TABLE colonia(
    idColonia INT PRIMARY KEY AUTO_INCREMENT,
    colonia VARCHAR(30) NOT NULL,
    codigoPostal INT(5) NOT NULL, 
    idMunicipio INT NOT NULL,
    FOREIGN KEY(idMunicipio) REFERENCES municipio(idMunicipio)
)ENGINE=InnoDB;

CREATE TABLE direccion(
    idDireccion INT PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(20) NOT NULL,
    numExt VARCHAR(5) NOT NULL,
    numInt VARCHAR(5) NOT NULL,
    idColonia INT NOT NULL,
    FOREIGN KEY(idColonia) REFERENCES colonia(idColonia)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS cliente(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    primerApellido VARCHAR(20) NOT NULL,
    segundoApellido VARCHAR(20) NOT NULL,
    telefono INT(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    idDireccion INT NOT NULL,
    FOREIGN KEY(idDireccion) REFERENCES direccion(idDireccion)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS distintivo(
    idDistintivo INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(15) NOT NULL,
    piel VARCHAR(15) NOT NULL,
    especial VARCHAR(15) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS mascota(
    idMascota INT PRIMARY KEY AUTO_INCREMENT,
    especie VARCHAR(20) NOT NULL,
    raza VARCHAR(20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    edad INT NOT NULL,
    idDistintivo INT NOT NULL,
    idCliente INT NOT NULL,
    FOREIGN KEY(idDistintivo) REFERENCES distintivo(idDistintivo),
    FOREIGN KEY(idCliente) REFERENCES cliente(idCliente)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS cita(
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idMascota INT NOT NULL,
    rfcMedico VARCHAR(13) NOT NULL,
    tipoConsulta VARCHAR(30) NOT NULL,
    fechaHora DATETIME NOT NULL,
    diagnostico TEXT(200) NOT NULL,
    tratamiento TEXT(100) NOT NULL,
    FOREIGN KEY(idMascota) REFERENCES mascota(idMascota),
    FOREIGN KEY(rfcMedico) REFERENCES medico(rfc)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS expMed(
    idExpGral INT PRIMARY KEY AUTO_INCREMENT,
    idMascota INT NOT NULL,
)ENGINE=InnoDB;