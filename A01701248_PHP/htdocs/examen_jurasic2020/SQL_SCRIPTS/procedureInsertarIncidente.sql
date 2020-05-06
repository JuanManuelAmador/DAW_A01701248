//procedure insertarIncidente
CREATE DEFINER = 'root'@'localhost'
PROCEDURE examenjurasicpark.insertarIncidente(IN $id_lugar INT(11), IN $id_incidente INT(11))
BEGIN
    INSERT INTO historico (id_lugar,id_incidente)
      VALUES($id_lugar,$id_incidente);
END