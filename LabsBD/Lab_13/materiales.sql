
/*

Laboratorio 13 Bases de Datos. 
Materiales.sql 
*/

BULK INSERT Laboratorio13BD.[materiales]
   FROM 'nfs://192.168.64.2/opt/lampp/htdocs/SQL/materiales.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Materiales;