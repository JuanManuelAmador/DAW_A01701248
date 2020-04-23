
/*
Juan Manuel Amador Perez Flores
Laboratorio 11 Bases de Datos. 
proveedores.sql 
*/

BULK INSERT Laboratorio1DAW.[Proveedores]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\SQL_\proveedores.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proveedores;