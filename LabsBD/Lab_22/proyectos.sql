
/*

Laboratorio 1 Bases de Datos. 
proyectos.sql 
*/

BULK INSERT Laboratorio22BD.[Proyectos]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\Lab_22\proyectos.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proyectos;