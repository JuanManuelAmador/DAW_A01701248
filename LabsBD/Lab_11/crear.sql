
/*
Juan Manuel Amador Perez Flores
Laboratorio 11 Bases de Datos. 
Crear.sql 
*/

DROP DATABASE IF EXISTS Laboratorio1DAW; 
#Crea una base de datos. 
CREATE DATABASE Laboratorio11BD; 

USE Laboratorio11BD; 
CREATE TABLE Materiales
(
  Clave numeric(5),
  Descripcion varchar(50),
  Costo numeric(8,2)
)

CREATE TABLE Proveedores
(
	RFC char(13),
	RazonSocial varchar(50)
)

CREATE TABLE Proyectos
(
	Numero numeric(5),
	Denominacion varchar(50)
)

CREATE TABLE Entregan
(
	Clave numeric(5),
	RFC char(13),
	Numero numeric(5),
	Fecha datetime,
	Cantidad Numeric(8,2)
)

sp_help Materiales
sp_help Proveedores
sp_help Proyectos
sp_help Entregan
DROP TABLE Materiales
DROP TABLE Proveedores
DROP TABLE Proyectos
DROP TABLE Entregan

select * from sysobjects where xtype='U'


/*
sp_help no funciona en Xamp pero HELP muestra informacion similar
*/

HELP Materiales; 
HELP Entregan; 
HELP Proveedores; 
HELP Proyectos; 

#Elimina las tablas creadas 
DROP TABLE Materiales;
DROP TABLE Proveedores;
DROP TABLE Proyectos;
DROP TABLE Entregan;

#Verificar que ya no exitan las tablas 
select * from Materiales where xtype='U'; 
select * from Proveedores where xtype='U';
select * from Proyectos where xtype='U';
select * from Entregan where xtype='U';