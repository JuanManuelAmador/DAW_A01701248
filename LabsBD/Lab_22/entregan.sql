
/*

Laboratorio 22 Bases de Datos. 
entregan.sql 
*/
SET DATEFORMAT dmy
BULK INSERT Laboratorio22BD.[Entregan]
   FROM "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\LabsBD\Lab_22\entregan.csv"
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )

SELECT  * FROM Entregan;