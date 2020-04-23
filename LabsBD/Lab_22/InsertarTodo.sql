
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

