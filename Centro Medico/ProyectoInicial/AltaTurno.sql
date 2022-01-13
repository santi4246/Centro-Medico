ALTER proc AltaTurno(
			@fecha char(14), --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

as

/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)

*/
SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idturno from Turno WHERE fechaturno=@fecha)
BEGIN
	INSERT INTO Turno (fechaTurno,estadoTurno,observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'El turno se agregó correctamente'
	return

	
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END

--EXEC AltaTurno '20211228 09:15', 1, 1,'Observación'
--EXEC AltaTurno 'Fecha', idPaciente, idMedico,'Observación'
SELECT * FROM Turno


EXEC AltaTurno '20220120 09:00', 5, 5, 'Turno Pendiente'
EXEC AltaTurno '20220120 09:15', 1, 4, 'Turno Pendiente'
EXEC AltaTurno '20220121 10:15', 8, 3, 'Turno Pendiente'
EXEC AltaTurno '20220121 10:30', 9, 1, 'Turno Pendiente'
EXEC AltaTurno '20220121 10:00', 3, 2, 'Turno Pendiente'
EXEC AltaTurno '20220122 09:00', 6, 5, 'Turno Pendiente'
EXEC AltaTurno '20220122 09:30', 2, 3, 'Turno Pendiente'