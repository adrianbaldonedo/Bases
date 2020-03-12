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
CREATE TABLE Paticia(
     DNI     Tipo_DNI,
    Codigo_proxecto Tipo_Codigo,
    Data_Inicio DATE NOT NULL,
    Data_Cese DATE,
    Dedicacion INTEGER NOT NULL,
    PRIMARY KEY 8DNI,Codigo_Proxecto),
    CKECK(DATA_Inicio)
)
CREATE TABLE Proxecto(
    Codigo_Proxecto Tipo_Codigo     PRIMARY KEY;
    Nome_Proxecto   Nome_Valido     NOT NULL,
    Orzamento       MONEY           NOT NULL,
    Data_Inicio     DATE            NOT NULL,
    Data_Fin        DATE,            
    N_Gr            Nome_Valido,
    N_Dep           Nome_Valido,
    UNIQUE (Nome_Proxecto),
    CHECK (Data_Inicio > Data_Fin)
);
ALTER TABLE Proxecto
    ADD CONSTRAINT FK_Grupo_Proxecto
    FOREIGN KEY(N_Gr,N_Dep)
    REFERENCES Grupo(Nome_Grupo,Nome_Departamento)
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE Proxecto
    ADD CONSTRAINT Data_Inicio_Unica
CREATE TABLE Financia(
    Nome_Programa       Nome_Valido,
    Codigo_Proxecto     Tipo_Codigo,
    Numero_Programa     Tipo_Codigo NOT NULL,
    Cantidade_Financiada MONEY    NOT NULL,
    PRIMARY KEY (Nome_Programa,Codigo_Proxecto)
    );
ALTER TABLE Financia
    ADD CONSTRAINT FK_Programa_Financia
        FOREIGN KEY (Nome_Programa)
        REFERENCES Programa
        ON DELETE Cascade
        ON UPDATE Cascade;
CREATE ASSERTION O_Orzamento-Inclue_Todo_O_Financiado
    CHECK (Proxecto.Orzamento >=
            SUM(Financia.Cantidade_Financiada)
    );
