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