
/*

Laboratorio 13 Bases de Datos. 
entregan.sql 
*/
SET DATEFORMAT dmy
BULK INSERT Laboratorio13BD.[Entregan]
   FROM 'nfs://192.168.64.2/opt/lampp/htdocs/SQL/entregan.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )

SELECT  * FROM Entregan;