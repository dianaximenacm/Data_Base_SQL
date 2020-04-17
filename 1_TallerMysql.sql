CREATE DATABASE concesionario CHARACTER SET utf8 COLLATE utf8_unicode_ci;   

USE concesionario;

CREATE TABLE marcas(idMarca     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                    nombreMarca VARCHAR(255)
                    );

CREATE TABLE autos( idAuto      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                    nombreAuto  VARCHAR(255),
                    precio      INT,
                    idMarca     INT NOT NULL
     
);

INSERT INTO marcas (nombreMarca) VALUES ('Lamborghini'), ('Audi'), ('Chevrolet'), ('Ford'), ('Renault'), ('Volkswagen');

INSERT INTO autos (nombreAuto, precio, idMarca) VALUES ("RS6", 100, 2), ("Sport Clio R.S. '11", 80, 5), 
("Corvette Stingray L46 350", 500, 3), ("Mustang GT", 290, 4), ("Scirocco GT24", 140, 6), ("RS200", 640, 4), 
("TT ABT Touring Car", 279, 2), ("Diablo GT '00", 1000, 1), ("Camaro Z28 Coupe", 550, 3), ("Reventon '08", 800, 1);


ALTER TABLE autos ADD CONSTRAINT fk_marca FOREIGN KEY (idMarca) REFERENCES marcas (idMarca) ON DELETE CASCADE ON UPDATE CASCADE;



/* consultas

SELECT * FROM autos WHERE nombreAuto LIKE '%GT%'

SELECT * FROM autos WHERE nombreAuto LIKE '%t'

SELECT a.nombreAuto, a.precio, m.nombreMarca FROM autos AS a INNER JOIN marcas AS m ON a.idMarca=m.idMarca WHERE precio BETWEEN 100 AND 550
ORDER BY nombreMarca ASC

SELECT a.nombreAuto, a.precio, m.nombreMarca, m.idMarca FROM autos AS a INNER JOIN marcas AS m ON a.idMarca=m.idMarca WHERE m.nombreMarca='Chevrolet' OR m.nombreMarca='Ford' 
 */