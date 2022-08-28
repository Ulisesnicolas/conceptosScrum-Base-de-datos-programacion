create database veterinaria;
use veterinaria;


CREATE TABLE "Dueno" (
  "dni_dueno" int,
  "nombre" varchar(150) NOT NULL,
  "apellido" varchar(150) NOT NULL,
  "telefono" bigint NOT NULL,
  "direccion" varchar(200) NULL
);

CREATE TABLE "Historial" (
  "id_historial" int,
  "fecha" datetime NOT NULL,
  "perro" int NOT NULL,
  "descripcion" varchar(1000) NOT NULL,
  "monto" float NOT NULL
  constraint pk_ch primary key(id_historial),
  constraint fk_fp foreign key(Perro) references Perro (id_Perro)
);

-- Cambiar el id de perro a igual 10


CREATE TABLE "Perro" (
  "id_perro" int,
  "nombre" varchar(150) NOT NULL,
  "fecha_nac" date NOT NULL,
  "sexo" varchar(1) NOT NULL,
  "dni_dueno" int NOT NULL
  onstraint pk_cp primary key(id_perro),
  constraint fk_fd foreign key(dni_dueno) references Dueno (dni)
);
-- Datos dueno
INSERT INTO Dueno VALUES("35754231","Julian","Ramones","1134697544","111 2233"); 

-- Datos de ID agregado a perro

INSERT INTO Perro VALUES ("10", "Gonzalo","21-01-2021","M", "35754231");