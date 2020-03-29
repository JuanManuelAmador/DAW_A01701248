
/*
Juan Manuel Amador Perez Flores
Laboratorio 11 Bases de Datos.  
entregan.sql 
*/
SET DATEFORMAT dmy
BULK INSERT Laboratorio1DAW.[Entregan]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\SQL_\entregan.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )

SELECT  * FROM Entregan;