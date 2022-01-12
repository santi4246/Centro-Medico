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

	print 'Datos del M�dico agregados correctamente'
	return

	
END
ELSE
BEGIN
	print 'El M�dico ya ha sido registrado.'
	return
END

--EXEC AltaMedico 'Alfonso Juan','Ram�rez', 1, 'M�dico residente'
--EXEC AltaMedico 'Sebasti�n Manuel','Reyes', 4, 'M�dico residente'
--EXEC AltaMedico 'Aldo Norberto','P�rez', 5, 'M�dico Generalista'
--EXEC AltaMedico 'Claudia Noem�','Villegas', 8, 'M�dico Cl�nico'
--EXEC AltaMedico 'Ana Mar�a','Tolosa', 7, 'M�dico residente'