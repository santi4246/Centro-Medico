/*
La sentencia CREATE
Permite crear objetos en SQL tales como tablas, Store Procedure y consultas.

Tablas: Podemos hacerlo por diseño o con la siguiente sintaxis
USE CentroMedico
GO
/****** Object: Table [dbo].[Historia]	Script Date: 07/04/2019 20:54:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Historia](
	[idHistoria] [dbo].[Historia] IDENTITY (1,1) NOT NULL,
	[fechaHistoria][DateTime] NULL,
	[observacion] [dbo][observacion] NULL,
	CONSTRAINT [PK_Historia] PRIMARY KEY CLUSTERED
(
	[idHistoria] ASC
) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON)
) ON [PRIMARY]
GO

Tipos de Datos:
CREATE TYPE Pais FROM CHAR(3)

Funciones:
CREATE FUNCTION NombreFuncion (@parametro1 int)
	RETURNS INT
AS
BEGIN
	SET @parametro1 = @parametro1 * 5
	RETURNS @parametro1
END

SELECT dbo.NombreFuncion(5)
*/

/*
La sentencia ALTER
Permite modificar objetos ya creados. Si un objeto ha sido creado, al utilizar CREATE arrojará un error porque la sentencia permite crear nuevos objetos, no modificarlos.
Para esto se usa ALTER para acceder al script y realizarle modificaciones.

ALTER TABLE Paciente ADD estado smallint	--Agrega una nueva columna a la tabla
ALTER TABLE Paciente ALTER COLUMN estado bit	--Modifica la columna de una tabla
ALTER TABLE Paciente DROP COLUMN estado		--Elimina una columna de la tabla
*/

/*
La sentencia DROP
Permite eliminar una tabla por completo de la Base de Datos, o eliminar una Base de Datos por completo.
CREATE TABLE Ejemplo1 (campo1 int, campo2 int)
DROP TABLE Ejemplo1
*/

/*
La sentencia TRUNCATE
Permite eliminar por completo el registro de una tabla y reinicar el campo IDENTITY con el valor inicial
CREATE TABLE Ejemplo(campo0 int IDENTITY(1,1), campo1 int, campo2 int)
INSERT INTO Ejemplo VALUES (1, 2)
SELECT * FROM Ejemplo
TRUNCATE TABLE Ejemplo
*/