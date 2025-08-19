-- Tabla docente
CREATE TABLE docente (
    identificacion VARCHAR(20) PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    telefono VARCHAR(15)
);

-- Tabla materia
CREATE TABLE materia (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    docente_identificacion VARCHAR(20) NOT NULL,
    creditos INTEGER DEFAULT 3,
    semestre INTEGER,
    FOREIGN KEY (docente_identificacion) REFERENCES docente(identificacion)
);

-- Tabla estudiante
CREATE TABLE estudiante (
    codigo_universitario VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(80) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Tabla matricula (relación muchos a muchos)
CREATE TABLE matricula (
    estudiante_codigo VARCHAR(15),
    materia_codigo VARCHAR(10),
    fecha_matricula DATE NOT NULL DEFAULT CURRENT_DATE,
    semestre VARCHAR(10) NOT NULL,
    nota_final DECIMAL(3,1),
    estado VARCHAR(20) DEFAULT 'ACTIVO',
    PRIMARY KEY (estudiante_codigo, materia_codigo, semestre),
    FOREIGN KEY (estudiante_codigo) REFERENCES estudiante(codigo_universitario),
    FOREIGN KEY (materia_codigo) REFERENCES materia(codigo)
);
-- Insertar docentes
INSERT INTO docente (identificacion, nombres, direccion, telefono) VALUES
('12345678', 'Carlos Alberto Rodríguez García', 'Calle 15 #23-45, Popayán', '3001234567'),
('87654321', 'María Fernanda López Castillo', 'Carrera 8 #12-34, Popayán', '3009876543'),
('11223344', 'José Luis Martínez Herrera', 'Avenida Norte #45-67, Popayán', '3005678901'),
('44332211', 'Ana Lucía Gómez Vargas', 'Transversal 12 #56-78, Popayán', '3007890123'),
('55667788', 'Roberto Carlos Silva Muñoz', 'Calle 20 #34-56, Popayán', '3004567890'),
('88776655', 'Diana Patricia Torres Jiménez', 'Carrera 5 #67-89, Popayán', '3008901234');

-- Insertar materias
INSERT INTO materia (codigo, nombre, docente_identificacion, creditos, semestre) VALUES
('MAT001', 'Cálculo Diferencial', '12345678', 4, 1),
('MAT002', 'Cálculo Integral', '12345678', 4, 2),
('FIS001', 'Física Mecánica', '87654321', 3, 1),
('FIS002', 'Física Electromagnética', '87654321', 3, 2),
('PROG01', 'Programación I', '11223344', 4, 1),
('PROG02', 'Programación II', '11223344', 4, 2),
('BD001', 'Base de Datos I', '44332211', 3, 3),
('BD002', 'Base de Datos II', '44332211', 3, 4),
('EST001', 'Estadística Descriptiva', '55667788', 3, 2),
('ING001', 'Inglés I', '88776655', 2, 1),
('ING002', 'Inglés II', '88776655', 2, 2),
('ALG001', 'Álgebra Lineal', '12345678', 3, 2);

-- Insertar estudiantes
INSERT INTO estudiante (codigo_universitario, nombre, apellidos, fecha_nacimiento, email, telefono) VALUES
('2024001', 'Juan Carlos', 'Pérez Rodríguez', '2005-03-15', 'juan.perez@unicauca.edu.co', '3101234567'),
('2024002', 'María Alejandra', 'González López', '2004-08-22', 'maria.gonzalez@unicauca.edu.co', '3109876543'),
('2024003', 'Luis Fernando', 'Martínez Silva', '2005-01-10', 'luis.martinez@unicauca.edu.co', '3105678901'),
('2024004', 'Ana Sofía', 'Vargas Torres', '2004-11-28', 'ana.vargas@unicauca.edu.co', '3107890123'),
('2024005', 'Carlos Andrés', 'Hernández Gómez', '2005-05-17', 'carlos.hernandez@unicauca.edu.co', '3104567890'),
('2024006', 'Diana Marcela', 'Castro Jiménez', '2004-09-03', 'diana.castro@unicauca.edu.co', '3108901234'),
('2024007', 'Miguel Ángel', 'Ramírez Muñoz', '2005-07-12', 'miguel.ramirez@unicauca.edu.co', '3102345678'),
('2024008', 'Laura Valentina', 'Ospina Cardona', '2004-12-05', 'laura.ospina@unicauca.edu.co', '3106789012'),
('2023001', 'Sebastián', 'Morales Ruiz', '2003-04-20', 'sebastian.morales@unicauca.edu.co', '3103456789'),
('2023002', 'Valentina', 'Castaño Pérez', '2003-10-15', 'valentina.castano@unicauca.edu.co', '3107654321');

-- Insertar matrículas
INSERT INTO matricula (estudiante_codigo, materia_codigo, fecha_matricula, semestre, nota_final, estado) VALUES
-- Estudiantes de primer semestre
('2024001', 'MAT001', '2024-01-15', '2024-1', 4.2, 'APROBADO'),
('2024001', 'FIS001', '2024-01-15', '2024-1', 3.8, 'APROBADO'),
('2024001', 'PROG01', '2024-01-15', '2024-1', 4.5, 'APROBADO'),
('2024001', 'ING001', '2024-01-15', '2024-1', 3.9, 'APROBADO'),

('2024002', 'MAT001', '2024-01-16', '2024-1', 4.0, 'APROBADO'),
('2024002', 'FIS001', '2024-01-16', '2024-1', 3.5, 'APROBADO'),
('2024002', 'PROG01', '2024-01-16', '2024-1', 4.3, 'APROBADO'),
('2024002', 'ING001', '2024-01-16', '2024-1', 4.1, 'APROBADO'),

('2024003', 'MAT001', '2024-01-17', '2024-1', 2.8, 'REPROBADO'),
('2024003', 'FIS001', '2024-01-17', '2024-1', 3.2, 'APROBADO'),
('2024003', 'PROG01', '2024-01-17', '2024-1', 3.7, 'APROBADO'),
('2024003', 'ING001', '2024-01-17', '2024-1', 3.0, 'APROBADO'),

-- Estudiantes de segundo semestre
('2024001', 'MAT002', '2024-07-20', '2024-2', NULL, 'ACTIVO'),
('2024001', 'FIS002', '2024-07-20', '2024-2', NULL, 'ACTIVO'),
('2024001', 'PROG02', '2024-07-20', '2024-2', NULL, 'ACTIVO'),
('2024001', 'ING002', '2024-07-20', '2024-2', NULL, 'ACTIVO'),
('2024001', 'ALG001', '2024-07-20', '2024-2', NULL, 'ACTIVO'),
('2024001', 'EST001', '2024-07-20', '2024-2', NULL, 'ACTIVO'),

('2024002', 'MAT002', '2024-07-21', '2024-2', NULL, 'ACTIVO'),
('2024002', 'FIS002', '2024-07-21', '2024-2', NULL, 'ACTIVO'),
('2024002', 'PROG02', '2024-07-21', '2024-2', NULL, 'ACTIVO'),
('2024002', 'ING002', '2024-07-21', '2024-2', NULL, 'ACTIVO'),
('2024002', 'ALG001', '2024-07-21', '2024-2', NULL, 'ACTIVO'),

-- Estudiantes avanzados
('2023001', 'BD001', '2024-07-15', '2024-2', NULL, 'ACTIVO'),
('2023001', 'EST001', '2024-07-15', '2024-2', NULL, 'ACTIVO'),

('2023002', 'BD001', '2024-07-16', '2024-2', NULL, 'ACTIVO'),
('2023002', 'BD002', '2024-07-16', '2024-2', NULL, 'ACTIVO');
