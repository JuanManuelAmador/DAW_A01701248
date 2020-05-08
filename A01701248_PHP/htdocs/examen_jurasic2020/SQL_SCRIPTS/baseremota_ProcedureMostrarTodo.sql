CREATE DEFINER = 'dawbdorg_1701248'@'%.%.%.%'
PROCEDURE dawbdorg_A01701248.mostrarTodo()
BEGIN
  SELECT L.nombre, I.nombre, H.fecha 
        FROM examenjurasicpark.lugaresincidente as L, examenjurasicpark.tipoincidente as I,examenjurasicpark.historico as H 
        WHERE L.id=H.id_lugar AND I.id=H.id_incidente
        ORDER BY fecha;
END