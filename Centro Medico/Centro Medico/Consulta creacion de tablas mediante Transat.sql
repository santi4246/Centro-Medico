--Creación de tabla mediante Transat

CREATE TABLE Paciente(
		idPaciente int NOT NULL,
		nombre varchar(50) NOT NULL,
		apellido varchar(50) NULL,
		fNacimiento date NULL,
		domicilio varchar(50) NULL,
		idPais char(3) NULL,
		telefono varchar(20) NULL,
		email varchar(30) NULL,
		observacion varchar(1000) NULL,
		fechaAlta datetime NOT NULL,
		CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)
)