CREATE DATABASE TicketMaster;
    USE TicketMaster;

        CREATE TABLE Fechas(
                id_Fecha VARCHAR(15) PRIMARY KEY,
                Dia_ VARCHAR(15),
                Dia_Semana VARCHAR(15),
                Dia_Mes VARCHAR(5),
                Anho_ VARCHAR(15)
            );

        INSERT INTO Fechas (id_Fecha, Dia_, Dia_Semana, Dia_Mes, Anho_)
            VALUES
                ('2023-07-01', '2023-07-01', 'Sábado', '1', '2023'),
                ('2023-07-02', '2023-07-02', 'Domingo', '2', '2023'),
                ('2023-07-03', '2023-07-03', 'Lunes', '3', '2023'),
                ('2023-07-04', '2023-07-04', 'Martes', '4', '2023'),
                ('2023-07-05', '2023-07-05', 'Miércoles', '5', '2023'),
                ('2023-07-06', '2023-07-06', 'Jueves', '6', '2023'),
                ('2023-07-07', '2023-07-07', 'Viernes', '7', '2023'),
                ('2023-07-08', '2023-07-08', 'Sábado', '8', '2023'),
                ('2023-07-09', '2023-07-09', 'Domingo', '9', '2023'),
                ('2023-07-10', '2023-07-10', 'Lunes', '10', '2023'),
                ('2023-07-11', '2023-07-11', 'Martes', '11', '2023'),
                ('2023-07-12', '2023-07-12', 'Miércoles', '12', '2023'),
                ('2023-07-13', '2023-07-13', 'Jueves', '13', '2023'),
                ('2023-07-14', '2023-07-14', 'Viernes', '14', '2023'),
                ('2023-07-15', '2023-07-15', 'Sábado', '15', '2023'),
                ('2023-07-16', '2023-07-16', 'Domingo', '16', '2023'),
                ('2023-07-17', '2023-07-17', 'Lunes', '17', '2023'),
                ('2023-07-18', '2023-07-18', 'Martes', '18', '2023'),
                ('2023-07-19', '2023-07-19', 'Miércoles', '19', '2023'),
                ('2023-07-20', '2023-07-20', 'Jueves', '20', '2023');

        SELECT * FROM Fechas;

        CREATE TABLE Usuarios(
            id_Usuarios INT PRIMARY KEY,
            Nombre VARCHAR(15),
            Apellido_Par VARCHAR(15),
            Ubicacion VARCHAR(100),
            Sexo VARCHAR(10),
            Contrasena VARCHAR(15),
            email VARCHAR(50)
        );

        INSERT INTO Usuarios (id_Usuarios, Nombre, Apellido_Par, Ubicacion, Sexo, Contrasena, email)
                VALUES
                    (1, 'Juan', 'Pérez', 'Ciudad de México', 'Masculino', '12345678', 'juan@example.com'),
                    (2, 'María', 'Gómez', 'Madrid, España', 'Femenino', 'abcdefgh', 'maria@example.com'),
                    (3, 'Carlos', 'González', 'Buenos Aires, Argentina', 'Masculino', 'qwertyui', 'carlos@example.com'),
                    (4, 'Ana', 'López', 'Santiago, Chile', 'Femenino', 'asdfghjk', 'ana@example.com'),
                    (5, 'Pedro', 'Martínez', 'Lima, Perú', 'Masculino', 'zxcvbnm1', 'pedro@example.com'),
                    (6, 'Laura', 'Rodríguez', 'Bogotá, Colombia', 'Femenino', 'password', 'laura@example.com'),
                    (7, 'Miguel', 'Sánchez', 'Caracas, Venezuela', 'Masculino', 'abc12345', 'miguel@example.com'),
                    (8, 'Paula', 'Fernández', 'Montevideo, Uruguay', 'Femenino', 'secure12', 'paula@example.com'),
                    (9, 'Diego', 'Torres', 'Quito, Ecuador', 'Masculino', 'mypassword', 'diego@example.com'),
                    (10, 'Sofía', 'Gutiérrez', 'La Paz, Bolivia', 'Femenino', 'hello123', 'sofia@example.com'),
                    (11, 'Andrés', 'Ramírez', 'San Salvador, El Salvador', 'Masculino', 'testpass', 'andres@example.com'),
                    (12, 'Carmen', 'Hernández', 'Tegucigalpa, Honduras', 'Femenino', 'letmein1', 'carmen@example.com'),
                    (13, 'Jorge', 'Chavez', 'Managua, Nicaragua', 'Masculino', 'letmein2', 'jorge@example.com'),
                    (14, 'Isabela', 'Morales', 'San José, Costa Rica', 'Femenino', 'qazwsxed', 'isabela@example.com'),
                    (15, 'Ricardo', 'Silva', 'Panamá, Panamá', 'Masculino', 'password1', 'ricardo@example.com'),
                    (16, 'Martina', 'Ochoa', 'Ciudad de Guatemala, Guatemala', 'Femenino', '1q2w3e4r', 'martina@example.com'),
                    (17, 'Gabriel', 'Fuentes', 'Belice City, Belice', 'Masculino', 'p@ssw0rd', 'gabriel@example.com'),
                    (18, 'Valentina', 'Rojas', 'San Juan, Puerto Rico', 'Femenino', 'pa$$w0rd', 'valentina@example.com'),
                    (19, 'Fernando', 'Vargas', 'Ciudad de Panamá, Panamá', 'Masculino', '1234abcd', 'fernando@example.com'),
                    (20, 'Julia', 'Mendoza', 'Buenos Aires, Argentina', 'Femenino', 'abcd1234', 'julia@example.com');

        SELECT * FROM Usuarios;

         CREATE TABLE GeneroMusical(
            id_Genero INT PRIMARY KEY,
            Nombre VARCHAR(15)
        );

        INSERT INTO GeneroMusical (id_Genero, Nombre)
            VALUES
                (1, 'Rock'),
                (2, 'Pop'),
                (3, 'Jazz'),
                (4, 'Clásica'),
                (5, 'Electrónica'),
                (6, 'Hip Hop'),
                (7, 'Reggae'),
                (8, 'Salsa'),
                (9, 'Folk'),
                (10, 'Country'),
                (11, 'Blues'),
                (12, 'R&B'),
                (13, 'Metal'),
                (14, 'Indie'),
                (15, 'Funk'),
                (16, 'Soul'),
                (17, 'Reguetón'),
                (18, 'Cumbia'),
                (19, 'Bachata'),
                (20, 'Merengue');

        SELECT * FROM GeneroMusical;

        CREATE TABLE Resenas(
            id_Resenas INT PRIMARY KEY,
            id_Usuarios INT,
            Comentarios VARCHAR(1000),
            FOREIGN KEY (id_Usuarios) REFERENCES Usuarios (id_Usuarios)
        );

        INSERT INTO Resenas (id_Resenas, id_Usuarios, Comentarios)
            VALUES
                (1, 1, 'Excelente evento. Recomendado.'),
                (2, 2, 'El artista estuvo fenomenal.'),
                (3, 3, 'La obra de teatro fue increíble.'),
                (4, 4, 'Muy interesante la conferencia.'),
                (5, 5, 'Partido emocionante. Ganó mi equipo.'),
                (6, 6, 'Película con una gran historia.'),
                (7, 7, 'Disfruté mucho de la feria.'),
                (8, 8, 'Deliciosa comida en el evento.'),
                (9, 9, 'Espectacular presentación de danza.'),
                (10, 10, 'Exposición de fotografías impresionante.'),
                (11, 11, 'Buena oportunidad de networking.'),
                (12, 12, 'Convención muy bien organizada.'),
                (13, 13, 'Avances tecnológicos interesantes.'),
                (14, 14, 'Evento social solidario.'),
                (15, 15, 'Experiencia en voluntariado gratificante.'),
                (16, 16, 'Conciencia ambiental en el evento.'),
                (17, 17, 'Charlas sobre salud muy informativas.'),
                (18, 18, 'Festival musical inolvidable.'),
                (19, 19, 'Destacados diseñadores de moda.'),
                (20, 20, 'Presentación de autores reconocidos.');

        SELECT * FROM Resenas;

        CREATE TABLE Eventos(
            id_Evento INT PRIMARY KEY,
            Nombre VARCHAR(100),
            Ubicacion VARCHAR(100),
            id_Usuarios INT,
            id_Genero INT,
            id_Resenas INT,
            id_Fecha VARCHAR(15),
            FOREIGN KEY (id_Usuarios) REFERENCES Usuarios (id_Usuarios),
            FOREIGN KEY (id_Genero) REFERENCES GeneroMusical (id_Genero),
            FOREIGN KEY (id_Resenas) REFERENCES Resenas (id_Resenas),
            FOREIGN KEY (id_Fecha) REFERENCES Fechas (id_Fecha)
        );

        INSERT INTO Eventos (id_Evento, Nombre, Ubicacion, id_Usuarios, id_Genero, id_Resenas, id_Fecha)
           VALUES
                (101, 'Concierto de Rock', 'Ciudad de México', 1, 1, 1, '2023-07-01'),
                (102, 'Obra de Teatro', 'Madrid, España', 2, 2, 2, '2023-07-02'),
                (103, 'Exposición de Arte', 'Buenos Aires, Argentina', 3, 3, 3, '2023-07-03'),
                (104, 'Conferencia sobre Educación', 'Nueva York, USA', 4, 4, 4, '2023-07-04'),
                (105, 'Partido de Fútbol', 'Londres, Reino Unido', 5, 5, 5, '2023-07-05'),
                (106, 'Festival de Cine', 'Los Angeles, USA', 6, 6, 6, '2023-07-06'),
                (107, 'Feria Cultural', 'Ciudad de México', 7, 7, 7, '2023-07-07'),
                (108, 'Gastronomía Internacional', 'París, Francia', 8, 8, 8, '2023-07-08'),
                (109, 'Presentación de Danza Clásica', 'Moscu, Rusia', 9, 9, 9, '2023-07-09'),
                (110, 'Exposición Fotográfica', 'Sídney, Australia', 10, 10, 10, '2023-07-10'),
                (111, 'Feria de Negocios', 'Tokio, Japón', 11, 11, 11, '2023-07-11'),
                (112, 'Convención de Tecnología', 'San Petersburgo, Rusia', 12, 12, 12, '2023-07-12'),
                (113, 'Concierto de Metal', 'Chicago, USA', 13, 13, 13, '2023-07-13'),
                (114, 'Festival Indie', 'Toronto, Canadá', 14, 14, 14, '2023-07-14'),
                (115, 'Concierto de Funk y Soul', 'Seúl, Corea del Sur', 15, 15, 15, '2023-07-15'),
                (116, 'Reguetón Fest', 'Beijing, China', 16, 16, 16, '2023-07-16'),
                (117, 'Cumbia Party', 'México', 17, 17, 17, '2023-07-17'),
                (118, 'Concierto de Pop', 'Barcelona, España', 18, 2, 18, '2023-07-18'),
                (119, 'Concierto de R&B', 'Ámsterdam, Países Bajos', 19, 12, 19, '2023-07-18'),
                (120, 'Presentación de Merengue', 'Madrid, España', 20, 20, 20, '2023-07-20');

        SELECT * FROM Eventos;

        CREATE TABLE Categorias(
            id_Categorias INT PRIMARY KEY,
            Nombre_Categoria VARCHAR(55),
            Tipos VARCHAR(55),
            id_Evento INT,
            FOREIGN KEY (id_Evento) REFERENCES Eventos (id_Evento)
        );

        INSERT INTO Categorias (id_Categorias, Nombre_Categoria, Tipos, id_Evento)
            VALUES
                (1, 'Concierto', 'Musical', 101),
                (2, 'Teatro', 'Arte', 102),
                (3, 'Exposición', 'Cultural', 103),
                (4, 'Conferencia', 'Educación', 104),
                (5, 'Deporte', 'Deportes', 105),
                (6, 'Cine', 'Cultural', 106),
                (7, 'Feria', 'Cultural', 107),
                (8, 'Gastronomía', 'Cultural', 108),
                (9, 'Danza', 'Arte', 109),
                (10, 'Fotografía', 'Arte', 110),
                (11, 'Feria de Negocios', 'Negocios', 111),
                (12, 'Convención', 'Negocios', 112),
                (13, 'Tecnología', 'Tecnología', 113),
                (14, 'Social', 'Social', 114),
                (15, 'Voluntariado', 'Social', 115),
                (16, 'Ecología', 'Medio Ambiente', 116),
                (17, 'Salud', 'Salud', 117),
                (18, 'Festival', 'Musical', 118),
                (19, 'Moda', 'Cultural', 119),
                (20, 'Literatura', 'Cultural', 120);

        SELECT * FROM Categorias;

        CREATE TABLE Boletos(
            id_Boleto INT PRIMARY KEY,
            id_Usuario INT,
            Precio VARCHAR(100),
            id_Evento INT,
            FOREIGN KEY (id_Usuario) REFERENCES Usuarios (id_Usuarios),
            FOREIGN KEY (id_Evento) REFERENCES Eventos (id_Evento)
        );

        INSERT INTO Boletos (id_Boleto, id_Usuario, Precio, id_Evento)
            VALUES
                (1, 1, '50 USD', 101),
                (2, 2, '40 EUR', 102),
                (3, 3, '500 ARS', 103),
                (4, 4, '30 USD', 104),
                (5, 5, '25 GBP', 105),
                (6, 6, '15 USD', 106),
                (7, 7, '20 USD', 107),
                (8, 8, '50 EUR', 108),
                (9, 9, '40 USD', 109),
                (10, 10, '10 AUD', 110),
                (11, 11, '25 JPY', 111),
                (12, 12, '20 RUB', 112),
                (13, 13, '35 USD', 113),
                (14, 14, '30 CAD', 114),
                (15, 15, '20 KRW', 115),
                (16, 16, '40 CNY', 116),
                (17, 17, '100 MXN', 117),
                (18, 18, '35 EUR', 118),
                (19, 19, '25 EUR', 119),
                (20, 20, '30 EUR', 120);

        SELECT * FROM Boletos;

        CREATE TABLE Artistas(
            id_Artistas INT PRIMARY KEY,
            Nombre_Artista VARCHAR(55),
            id_Boleto INT,
            FOREIGN KEY (id_Boleto) REFERENCES Boletos (id_Boleto)
        );

        INSERT INTO Artistas (id_Artistas, Nombre_Artista, id_Boleto)
            VALUES
                (201, 'Banda de Rock', 1),
                (202, 'Compañía de Teatro', 2),
                (203, 'Artista de Pintura', 3),
                (204, 'Conferencista Educativo', 4),
                (205, 'Equipo de Fútbol', 5),
                (206, 'Director de Cine', 6),
                (207, 'Organizador de Feria', 7),
                (208, 'Chef Internacional', 8),
                (209, 'Compañía de Danza Clásica', 9),
                (210, 'Fotógrafo Profesional', 10),
                (211, 'Empresario', 11),
                (212, 'Especialista en Tecnología', 12),
                (213, 'Banda de Metal', 13),
                (214, 'Grupo Indie', 14),
                (215, 'Artista de Funk y Soul', 15),
                (216, 'DJ de Reguetón', 16),
                (217, 'Orquesta de Cumbia', 17),
                (218, 'Artista de Pop', 18),
                (219, 'Cantante de R&B', 19),
                (220, 'Grupo de Merengue', 20);

        SELECT * FROM Artistas;

        CREATE TABLE Teatros(
            id_Teatro INT PRIMARY KEY,
            Ubicacion VARCHAR(55),
            Nombre VARCHAR(55),
            id_Artista INT,
            FOREIGN KEY (id_Artista) REFERENCES Artistas (id_Artistas)
        );

        INSERT INTO Teatros (id_Teatro, Ubicacion, Nombre, id_Artista)
            VALUES
                (1, 'Ciudad de México', 'Teatro Nacional', 201),
                (2, 'Madrid, España', 'Teatro Real', 202),
                (3, 'Buenos Aires, Argentina', 'Teatro Colón', 203),
                (4, 'Londres, Reino Unido', 'Royal Opera House', 204),
                (5, 'Nueva York, USA', 'Broadway Theatre', 205),
                (6, 'Tokio, Japón', 'Tokyo Metropolitan Theatre', 206),
                (7, 'París, Francia', 'Opéra Garnier', 207),
                (8, 'Roma, Italia', 'Teatro dell\'Opera di Roma', 208),
                (9, 'Viena, Austria', 'Wiener Staatsoper', 209),
                (10, 'Berlín, Alemania', 'Staatsoper Unter den Linden', 210),
                (11, 'San Petersburgo, Rusia', 'Mariinsky Theatre', 211),
                (12, 'Moscú, Rusia', 'Bolshoi Theatre', 212),
                (13, 'Sídney, Australia', 'Sydney Opera House', 213),
                (14, 'Toronto, Canadá', 'Royal Alexandra Theatre', 214),
                (15, 'Seúl, Corea del Sur', 'Seoul Arts Center', 215),
                (16, 'Beijing, China', 'National Centre for the Performing Arts', 216),
                (17, 'México', 'Teatro de la Ciudad', 217),
                (18, 'Barcelona, España', 'Gran Teatre del Liceu', 218),
                (19, 'Chicago, USA', 'Chicago Theatre', 219),
                (20, 'Ámsterdam, Países Bajos', 'Royal Concertgebouw', 220);

        SELECT * FROM Teatros;

        ALTER TABLE Usuarios ADD COLUMN Edad INT;
        UPDATE Usuarios SET Edad = 25 WHERE id_Usuarios = 1;
        UPDATE Usuarios SET Edad = 18 WHERE id_Usuarios = 2;
        UPDATE Usuarios SET Edad = 20 WHERE id_Usuarios = 3;
        UPDATE Usuarios SET Edad = 21 WHERE id_Usuarios = 4;
        UPDATE Usuarios SET Edad = 23 WHERE id_Usuarios = 5;
        UPDATE Usuarios SET Edad = 24 WHERE id_Usuarios = 6;
        UPDATE Usuarios SET Edad = 24 WHERE id_Usuarios = 7;
        UPDATE Usuarios SET Edad = 27 WHERE id_Usuarios = 8;
        UPDATE Usuarios SET Edad = 32 WHERE id_Usuarios = 9;
        UPDATE Usuarios SET Edad = 38 WHERE id_Usuarios = 10;
        UPDATE Usuarios SET Edad = 39 WHERE id_Usuarios = 11;
        UPDATE Usuarios SET Edad = 18 WHERE id_Usuarios = 12;
        UPDATE Usuarios SET Edad = 24 WHERE id_Usuarios = 13;
        UPDATE Usuarios SET Edad = 23 WHERE id_Usuarios = 14;
        UPDATE Usuarios SET Edad = 28 WHERE id_Usuarios = 15;
        UPDATE Usuarios SET Edad = 29 WHERE id_Usuarios = 16;
        UPDATE Usuarios SET Edad = 36 WHERE id_Usuarios = 17;
        UPDATE Usuarios SET Edad = 38 WHERE id_Usuarios = 18;
        UPDATE Usuarios SET Edad = 35 WHERE id_Usuarios = 19;
        UPDATE Usuarios SET Edad = 39 WHERE id_Usuarios = 20;

        SELECT * FROM Usuarios;

        ALTER TABLE Artistas ADD COLUMN Boletos_Vendidos INT;
        UPDATE Artistas SET Boletos_Vendidos = 10000 WHERE id_Artistas = 201;
        UPDATE Artistas SET Boletos_Vendidos = 12543 WHERE id_Artistas = 202;
        UPDATE Artistas SET Boletos_Vendidos = 78900 WHERE id_Artistas = 203;
        UPDATE Artistas SET Boletos_Vendidos = 12445 WHERE id_Artistas = 204;
        UPDATE Artistas SET Boletos_Vendidos = 12345 WHERE id_Artistas = 205;
        UPDATE Artistas SET Boletos_Vendidos = 89099 WHERE id_Artistas = 206;
        UPDATE Artistas SET Boletos_Vendidos = 90000 WHERE id_Artistas = 207;
        UPDATE Artistas SET Boletos_Vendidos = 76890 WHERE id_Artistas = 208;
        UPDATE Artistas SET Boletos_Vendidos = 12345 WHERE id_Artistas = 209;
        UPDATE Artistas SET Boletos_Vendidos = 70000 WHERE id_Artistas = 210;
        UPDATE Artistas SET Boletos_Vendidos = 87690 WHERE id_Artistas = 211;
        UPDATE Artistas SET Boletos_Vendidos = 24598 WHERE id_Artistas = 212;
        UPDATE Artistas SET Boletos_Vendidos = 25892 WHERE id_Artistas = 213;
        UPDATE Artistas SET Boletos_Vendidos = 25566 WHERE id_Artistas = 214;
        UPDATE Artistas SET Boletos_Vendidos = 99817 WHERE id_Artistas = 215;
        UPDATE Artistas SET Boletos_Vendidos = 54426 WHERE id_Artistas = 216;
        UPDATE Artistas SET Boletos_Vendidos = 42416 WHERE id_Artistas = 217;
        UPDATE Artistas SET Boletos_Vendidos = 76676 WHERE id_Artistas = 218;
        UPDATE Artistas SET Boletos_Vendidos = 67897 WHERE id_Artistas = 219;
        UPDATE Artistas SET Boletos_Vendidos = 35467 WHERE id_Artistas = 220;

        SELECT * FROM Artistas;

