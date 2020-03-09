CREATE SCHEMA Investigacion;
CREATE DOMAIN Tipo_Codigo CHAR(5);
CREATE DOMAIN Tipo_DNI CHAR(9);
CREATE DOMAIN Nome_Valido VARCHAR(30);
-- CREATE TABLE Investigacion.Sede(
CREATE  TABLE Sede(
    Nome_Sede Nome_Valido PRIMARY KEY,
    Campus Nome_Valido NOT NULL,
    CONSTRAINT PK_Sede
    PRIMARY KEY (Nome_Sede)
);
CREATE  TABLE Departamento(
    Nome_Departamento Nome_Valido PRIMARY KEY,
    Telefomo (CHAR 9) NOT NULL,
    Director  Tipo_DNI,
    --PK (DIRECTOR)
);
CREATE TABLE Ubicacion(
Nome_Sede Nome_Valido,
Nome_Departamento Nome_Valido,
PRIMARY KEY(Nome_Sede,Nome_Departamento),
CONSTRAINT FK_Sede_Ubicacion
    FOREIGN KEY (Nome_Sede)
    REFERENCES Sede (Nome_Sede)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
CONSTRAINT FK_Departamento_Ubicacion
    FOREIGN KEY (Nome_Departamento)
    REFERENCES Departamento (Nome_Departamento)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
);
CREATE TABLE Grupo(
Nome_Grupo      Nome_Valido
Nome_Departamento Nome_Valido
Area              Nome Valido
Lider             Tipo_DNI,
    PRIMARY KEY (Nome_Grupo,Nome_Departamento)
    FOREIGN KEY (Nome_Departamento)
    REFERENCES DEPARTAMENTO (Nome_Departamento)
    ON DELETE Cascade
    ON UPDATE Cascade
-- PK(Lider)
);
CREATE TABLE Profesor(
DNI Tipo_DNI PRIMARY KEY,
Nome_Profesor Nome_Valido NOT NULL, 
Titulacion VARCHAR(20) NOT NULL,
Experiencia Integer,
N_Grupo Nome_Valido,
N_Departamento Nome_Valido,
    FOREIGN KEY (N_Grupo, N_Departamento)
    REFERENCES Grupo(Nome_Grupo, Nome_Departamento)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);
ALTER TABLE Departamento
    ADD CONSTRAINT FK_Profesor_Departamento
    FOREIGN KEY(Director)
    REFERENCES Profesor (DNI)
    ON DELETE SET NULL
    ON UPDATE Cascade;
ALTER TABLE Profesor
    DROP CONSTRAINT  FK_Grupo_Profesor;
ALTER TABLE Profesor
    ADD CONSTRAINT FK_Grupo_Profesor
    FOREIGN KEY (N_Grupo, N_Departamento)
    REFERENCES Grupo(Nome_Grupo, Nome_Departamento)
    ON DELETE SET NULL
    ON UPDATE SET NULL;
