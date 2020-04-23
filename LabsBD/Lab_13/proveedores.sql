
/*

Laboratorio 1 Bases de Datos. 
proveedores.sql 
*/

BULK INSERT Laboratorio13BD.[Proveedores]
   FROM 'nfs://192.168.64.2/opt/lampp/htdocs/SQL/proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proveedores;