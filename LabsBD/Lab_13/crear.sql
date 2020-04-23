/*
Juan Manuel Amador Perez Flores
Laboratorio 13 Bases de Datos. 
Crear.sql 
*/
    #Verifica si existe una base de datos con el mismo nombre, si si la elimina y crea una nueva. 
DROP
    DATABASE IF EXISTS Laboratorio13BD;
    #Crea una base de datos. 
CREATE DATABASE Laboratorio13BD;
USE Laboratorio13BD;
    #Verifica que no exita una tabla con el mismo nombre, si si la elimina y crea una. 
DROP TABLE IF EXISTS
    Materiales;
CREATE TABLE Materiales(
    Clave NUMERIC(5),
    Descripcion VARCHAR(50),
    Costo NUMERIC(8, 2)
);
#Verifica que no exita una tabla con el mismo nombre, si si la elimina y crea una. 
DROP TABLE IF EXISTS
    Proveedores;
CREATE TABLE Proveedores(
    RFC CHAR(13),
    RazonSocial VARCHAR(50)
);
#Verifica que no exita una tabla con el mismo nombre, si si la elimina y crea una. 
DROP TABLE IF EXISTS
    Proyectos;
CREATE TABLE Proyectos(
    Numero NUMERIC(5),
    Denominacion VARCHAR(50)
);
#Verifica que no exita una tabla con el mismo nombre, si si la elimina y crea una. 
DROP TABLE IF EXISTS
    Entregan;
CREATE TABLE Entregan(
    Clave NUMERIC(5),
    RFC CHAR(13),
    Numero NUMERIC(5),
    Fecha DATETIME,
    Cantidad NUMERIC(8, 2)
);

/*
NO permite ejecutar el comadno sp_help, sql de XAMPP no reconoce ese comando
Help regresa algo similar sin embargo no es lo mismo. 
*/