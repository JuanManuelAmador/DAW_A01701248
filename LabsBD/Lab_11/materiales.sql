
/*
Juan Manuel Amador Perez Flores
Laboratorio 11 Bases de Datos.  
Materiales.sql 
*/

BULK INSERT Laboratorio1DAW.[materiales]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\SQL_\materiales.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Materiales;