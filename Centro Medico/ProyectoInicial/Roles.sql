-- Roles --
/*
Permiten agrupar privilegios y asignarlos a múltiples usuarios.
*/

/*
Creación de usuario Santiago con el Rol de Administrador_Turnos. Permisos: autorizados en forma completa para la tabla Turnos, y denegación completa para la tabla Paciente.
El tipo de Rol creado para el usuario Santiago sólo puede visualizar, modificar y eliminar la tabla Turno. No puede realizar ninguna otra acción con el resto de tablas.
Ver: Vídeo N° 184 y 185 del Máster
*/

SELECT * FROM Paciente
SELECT * FROM Pais
SELECT * FROM Turno

CREATE ROLE Pagos AUTHORIZATION dbo
ALTER ROLE Pagos ADD MEMBER Administrador3


/*
Esquemas
Un esquema es un espacio de nombres que permite agrupar objetos como tablas, vistas, SP, etc. Si queremos que un usuario o área de trabajo sólo pueda visualizar determinadas
tablas, podemos hacerlo bajo un esquema de trabajo.

ALTER SCHEMA Facturacion TRANSFER Pais
ALTER SCHEMA Facturacion TRANSFER Medico
*/