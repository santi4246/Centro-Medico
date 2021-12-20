--Es un conjunto de instrucciones o procedimientos que está almacenado en forma interna en SQL Server para que esté disponible en cualquier momento y sirven para ejecutar
--acciones concretas.

--Estructura:
/*

CREATE PROC SP_paciente (
	@idPaciente int
)

AS

SELECT * FROM Paciente WHERE idPaciente = @idPaciente

GO
*/

--Con ALTER se modificará todo el Store Procedure
--Subconsultas y uso de Alias de Tablas
ALTER PROC [dbo].[SP_paciente](
	@idPaciente int
)
AS

SELECT apellido, nombre, idPais, observacion, 
	(SELECT ps.Pais FROM Pais ps WHERE ps.idPais = pa.idPais) descPais --Una subconsulta no puede devolver más de un valor para un registro en particular. En este caso pa y ps son alias de Paciente y Pais
FROM Paciente pa WHERE idPaciente = @idPaciente

--Variables:
--DECLARE @ordenamiento CHAR(1) ) = 'A' --En esta línea se crea una variable y asigna el tipo de datos, similar a SET @ordenamiento = 'A'

DECLARE @ordenamiento CHAR(1)	--Esta variable por defecto tiene el valor NULL, podemos utilizar ISNULL para forzar un dato en la salida
DECLARE @valorOrdenamiento CHAR(1)
SET @valorOrdenamiento = ISNULL (@ordenamiento, 'A') --Recibe 2 parámetros, una variable o campo de tabla y el valor que arrojará por consola si por defecto es NULL
print @valorOrdenamiento

--SET ANSI_NULLS ON --Sintáxis que determina que no se incluirán los registros de los campos en NULL, OFF realizará lo contrario

--SELECT * FROM Paciente WHERE domicilio = NULL

--SET QUOTED_IDENTIFIER ON	permite crear objetos con nombres de palabras reservadas como "SELECT", OFF realizará lo contrario quitándole las comillas


--Ver la consulta Comandos para saber cómo se ejecuta un Store Procedure