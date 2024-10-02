CREATE TABLE Pacientes (
idPaciente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
alergias VARCHAR(255),
condiciones_clinicas VARCHAR(255)
);

CREATE TABLE Medicos (
idMedico INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
especialidad VARCHAR(100),
horario VARCHAR(100)
);

CREATE TABLE Citas (
idCita INT PRIMARY KEY AUTO_INCREMENT,
fecha DATE,
lugar VARCHAR(100),
idPaciente INT,
idMedico INT,
FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente),
FOREIGN KEY (idMedico) REFERENCES Medicos(idMedico)
);


INSERT INTO Pacientes (nombre, alergias, condiciones_clinicas)
VALUES ('Juan Perez', 'Ninguna', 'Hipertensión');

SELECT * FROM Pacientes;

UPDATE Pacientes
SET nombre = 'Carlos Martinez', alergias = 'Polvo', condiciones_clinicas = 'Diabetes'
WHERE idPaciente = 1;

DELETE FROM Pacientes WHERE idPaciente = 1;

INSERT INTO Medicos (nombre, especialidad, horario)
VALUES ('Dr. Ana Torres', 'Cardiología', 'Lunes a Viernes 8:00-14:00');

SELECT * FROM Medicos;

UPDATE Medicos
SET nombre = 'Dr. Pedro Garcia', especialidad = 'Pediatría', horario = 'Lunes a Viernes
10:00-16:00'
WHERE idMedico = 1;

DELETE FROM Medicos WHERE idMedico = 1;

INSERT INTO Citas (fecha, lugar, idPaciente, idMedico)
VALUES ('2024-10-01', 'Consultorio 1', 1, 1);
SELECT * FROM Citas;

UPDATE Citas
SET fecha = '2024-10-02', lugar = 'Consultorio 2'
WHERE idCita = 1;

DELETE FROM Citas WHERE idCita = 1;

