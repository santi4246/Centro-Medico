/*Store Procedure que realiza una consulta referente a la Historia Clínica filtrada por idPaciente.*/
ALTER PROC SP_HistoriaPaciente(
	@idPaciente Paciente
)

AS

SET NOCOUNT ON

IF EXISTS( -- Condicional
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idPaciente
)

BEGIN -- Cuerpo del condicional
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idPaciente
END

ELSE -- Dos posibles escenarios

BEGIN
	--PRINT 'No existen Historias Clínicas del paciente ingresado' -- 1° Se imprime un mensaje en la interfaz de usuario
	SELECT 0 AS RESULTADOS -- 2° Se devuelve un valor correspondiente a 0 registros
END

-- Ejecución del Script
--EXEC SP_HistoriaPaciente 1