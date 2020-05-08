CREATE DEFINER = 'dawbdorg_1701248'@'%.%.%.%'
PROCEDURE dawbdorg_A01701248.insertarincidente(IN $id_lugar INT(11), IN $id_incidente INT(11))
BEGIN
    INSERT INTO historico (id_lugar,id_incidente)
      VALUES($id_lugar,$id_incidente);
END