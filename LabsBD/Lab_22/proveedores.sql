
/*

Laboratorio 1 Bases de Datos. 
proveedores.sql 
*/

BULK INSERT Laboratorio22BD.[Proveedores]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\Lab_22\proveedores.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proveedores;