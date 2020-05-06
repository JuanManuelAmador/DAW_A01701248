//procedureMostrar Todo
CREATE DEFINER = 'root'@'localhost'
PROCEDURE examenjurasicpark.mostrarTodo()
BEGIN
  SELECT L.nombre, I.nombre, H.fecha 
        FROM examenjurasicpark.lugaresincidente as L, examenjurasicpark.tipoincidente as I,examenjurasicpark.historico as H 
        WHERE L.id=H.id_lugar AND I.id=H.id_incidente
        ORDER BY fecha;
END

