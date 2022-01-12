ALTER PROC AltaMedico(
			@nombre varchar(50),
			@apellido varchar(20),
			@idEspecialidad int,
			@descripcion varchar(50)
			)

AS

SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idmedico from Medico WHERE nombre=@nombre and apellido = @apellido)
BEGIN
	
	INSERT INTO Medico (nombre, apellido)
	VALUES (@nombre,@apellido)
		
	declare @auxIdMedico int
	set @auxIdMedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad, descripcion)
	VALUES (@auxIdMedico, @idEspecialidad,@descripcion)

	print 'Datos del Médico agregados correctamente'
	return

	
END
ELSE
BEGIN
	print 'El Médico ya ha sido registrado.'
	return
END

--EXEC AltaMedico 'Alfonso Juan','Ramírez', 1, 'Médico residente'
--EXEC AltaMedico 'Sebastián Manuel','Reyes', 4, 'Médico residente'
--EXEC AltaMedico 'Aldo Norberto','Pérez', 5, 'Médico Generalista'
--EXEC AltaMedico 'Claudia Noemí','Villegas', 8, 'Médico Clínico'
--EXEC AltaMedico 'Ana María','Tolosa', 7, 'Médico residente'