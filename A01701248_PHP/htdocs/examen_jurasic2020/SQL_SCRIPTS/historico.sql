//Tabla historicos
CREATE TABLE examenjurasicpark.historico (
  id INT(11) NOT NULL AUTO_INCREMENT,
  id_lugar INT(11) NOT NULL,
  id_incidente INT(11) NOT NULL,
  fecha TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

ALTER TABLE examenjurasicpark.historico 
  ADD CONSTRAINT FK_historico_id_incidente FOREIGN KEY (id_incidente)
    REFERENCES examenjurasicpark.lugaresincidente(id) ON DELETE NO ACTION;

ALTER TABLE examenjurasicpark.historico 
  ADD CONSTRAINT FK_historico_id_lugar FOREIGN KEY (id_lugar)
    REFERENCES examenjurasicpark.lugaresincidente(id) ON DELETE NO ACTION;
