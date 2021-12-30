CREATE VIEW MedicoEspecialidades AS 

SELECT M.idMedico, M.nombre, M.apellido, ME.idEspecialidad, ME.descripcion FROM Medico M
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = M.idMedico

-- SELECT * FROM MedicoEspecialidades