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