CREATE DATABASE control_de_stock;
       USE control_de_stock;

        CREATE TABLE producto (
            id INT AUTO_INCREMENT,
            nombre VARCHAR(50),
            descripcion VARCHAR(255),
            cantidad INT NOT NULL DEFAULT 0,
            PRIMARY KEY (id)
        )engine = InnoDB;

        SELECT * FROM producto;

        INSERT INTO producto (nombre, descripcion, cantidad)
        VALUES ('Mesa', 'Mesa de madera', 10);

        INSERT INTO producto (nombre, descripcion, cantidad)
        VALUES ('Silla', 'Silla de madera', 10);

        INSERT INTO producto (nombre, descripcion, cantidad)
        VALUES ('Escritorio', 'Escritorio blanco para PC', 12);

        SELECT * FROM producto;
