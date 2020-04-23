
/*

Laboratorio 1 Bases de Datos. 
proyectos.sql 
*/

BULK INSERT Laboratorio13BD.[Proyectos]
   FROM 'nfs://192.168.64.2/opt/lampp/htdocs/SQL/proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proyectos;