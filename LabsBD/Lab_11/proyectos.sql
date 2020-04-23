
/*
Juan Manuel Amador Perez Flores
Laboratorio 11 Bases de Datos. 
proyectos.sql 
*/

BULK INSERT Laboratorio1DAW.[Proyectos]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\SQL_\proyectos.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proyectos;