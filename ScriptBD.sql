-- -------------------------------------
-- CREAMOS LA BD
-- -------------------------------------
CREATE DATABASE veterinaria;

USE veterinaria;
-- -------------------------------------
-- TABLA QUE ALMACENA A LOS CLIENTES
-- -------------------------------------
CREATE TABLE Dueno
(
DNI varchar (10) primary key not null unique,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono varchar(25),
Direccion varchar(45)
);
-- -------------------------------------
-- TABLA QUE ALMACENA A LOS PERROS
-- -------------------------------------
CREATE TABLE  Perro
(
ID_Perro int not null auto_increment,
Nombre varchar(25) not null,
fecha_nac date,
sexo char,
DNI_dueno varchar (10) not null,
constraint pk_cp primary key(ID_Perro),
constraint fk_fd foreign key(DNI_dueno) references Dueno (DNI)
);
-- ------------------------------------------
-- TABLA QUE ALMACENA A LAS VISITAS A LA VET
-- -------------------------------------------
CREATE TABLE Historial
(
ID_Historial int not null auto_increment,
Fecha datetime not null,
Descripcion varchar(100),
Monto float,
Perro int not null,
constraint pk_ch primary key(ID_Historial),
constraint fk_fp foreign key(Perro) references Perro (ID_Perro)
);
-- ------------------------------------------
-- INSERTAMOS VARIOS CLIENTE
-- -------------------------------------------
INSERT INTO Dueno VALUES("25852258","Alvarez","Jorgelina","2234692525","Alem 1456"); 
INSERT INTO Dueno VALUES("27222222","Perez","Jorge","223526987","Roca 25");
INSERT INTO Dueno VALUES("35256987","Ruiz","Donato","2235800146","Jujuy 1234"); 

-- ------------------------------------------
-- INSERTAMOS VARIOS PERRO
-- -------------------------------------------
INSERT INTO Perro VALUES (null,"Zeus",'2020-01-14',"M","25852258");
INSERT INTO Perro VALUES (null,"Afrodita",'2020-01-14',"F","25852258");
INSERT INTO Perro VALUES (null,"Rene",'2021-04-25',"F","27222222");
INSERT INTO Perro VALUES (null,"Pancho",'2021-05-10',"M","35256987");

-- ------------------------------------------
-- SELECCIONAMOS TODOS LOS PERROS NACIDOS ENTRE 2020 Y 2022 (HASTA EL DIA DE HOY)
-- -------------------------------------------
SELECT 
	* 
FROM 
	veterinaria.perro 
WHERE
	sexo = "M" AND fecha_nac BETWEEN '2020/01/01' AND CURRENT_DATE();