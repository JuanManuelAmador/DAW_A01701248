
/*

Laboratorio 13 Bases de Datos. 
Materiales.sql 
*/

BULK INSERT Laboratorio22BD.[materiales]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\Lab_22\materiales.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Materiales;