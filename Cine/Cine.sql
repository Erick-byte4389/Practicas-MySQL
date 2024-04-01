CREATE DATABASE Cine;
    USE Cine;
        CREATE TABLE Cine
        (
            Codigo INT NOT NULL,
            Nombre VARCHAR(50),
            Clasificacion INT,
            PRIMARY KEY (Codigo)
        );

        CREATE TABLE Salas
        (
            Codigo INT NOT NULL ,
            Nombre VARCHAR(50),
            Pelicula INT,
            PRIMARY KEY (Codigo),
            FOREIGN KEY (Pelicula) REFERENCES Cine (Codigo)
        );

        INSERT INTO Cine VALUES (100, 'Rapidos y furiosos X', 2);
        INSERT INTO Cine VALUES (101, 'Guardianes de la galaxia Vol.3', 2);
        INSERT INTO Cine VALUES (102, 'Ofrenda al demonio', 3);
        INSERT INTO Cine VALUES (103, 'Super Mario Bros', 1);
        INSERT INTO Cine VALUES (104, 'Transformes', 2);

        SELECT * FROM Cine;

        INSERT INTO Salas VALUES (1, 'Sala 1', 100);
        INSERT INTO Salas VALUES (2, 'Sala 2', 101);
        INSERT INTO Salas VALUES (3, 'Sala 3', 102);
        INSERT INTO Salas VALUES (4, 'Sala 4', 103);
        INSERT INTO Salas VALUES (5, 'Sala 5', 104);

        SELECT * FROM Salas;

        SELECT Cine.nombre, Salas.nombre FROM `Cine` INNER JOIN Salas on Cine.Codigo = Salas.Pelicula;
