--Con el siguiente script se crean llaves for�neas en las relaciones de las tablas

ALTER TABLE Paciente
	ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais)

ALTER TABLE HistoriaPaciente
	ADD FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)