/*Store Procedure que realiza una consulta referente a las Especialidades M�dicas filtrada por idMedico.*/

ALTER PROC EspecialidadMedica

AS

SET NOCOUNT ON

IF EXISTS(SELECT * FROM Especialidad)

BEGIN
	SELECT * FROM Especialidad
END

ELSE
BEGIN
	SELECT 0 AS RESULTADOS
END

-- Ejecuci�n del Script --
--EXEC EspecialidadMedica