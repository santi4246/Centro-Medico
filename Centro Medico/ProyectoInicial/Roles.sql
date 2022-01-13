-- Roles --
/*
Permiten agrupar privilegios y asignarlos a m�ltiples usuarios.
*/

/*
Creaci�n de usuario Santiago con el Rol de Administrador_Turnos. Permisos: autorizados en forma completa para la tabla Turnos, y denegaci�n completa para la tabla Paciente.
El tipo de Rol creado para el usuario Santiago s�lo puede visualizar, modificar y eliminar la tabla Turno. No puede realizar ninguna otra acci�n con el resto de tablas.
Ver: V�deo N� 184 y 185 del M�ster
*/

SELECT * FROM Paciente
SELECT * FROM Pais
SELECT * FROM Turno

CREATE ROLE Pagos AUTHORIZATION dbo
ALTER ROLE Pagos ADD MEMBER Administrador3

ALTER SCHEMA Facturacion TRANSFER dbo.Pais
ALTER SCHEMA Facturacion TRANSFER dbo.Medico

ALTER SCHEMA DBO TRANSFER Facturacion.Pais
ALTER SCHEMA DBO TRANSFER Facturacion.Medico


/*
Esquemas
Un esquema es un espacio de nombres que permite agrupar objetos como tablas, vistas, SP, etc. Si queremos que un usuario o �rea de trabajo s�lo pueda visualizar determinadas
tablas, podemos hacerlo bajo un esquema de trabajo.

ALTER SCHEMA DBO TRANSFER Pais
ALTER SCHEMA DBO TRANSFER Medico
*/