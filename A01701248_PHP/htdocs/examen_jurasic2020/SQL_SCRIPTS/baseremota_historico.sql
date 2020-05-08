CREATE TABLE dawbdorg_A01701248.historico (
  id INT(11) NOT NULL AUTO_INCREMENT,
  id_incidente INT(11) NOT NULL,
  id_lugar INT(11) NOT NULL,
  fecha TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

ALTER TABLE dawbdorg_A01701248.historico 
  ADD CONSTRAINT FK_historico_id_incidente FOREIGN KEY (id_incidente)
    REFERENCES dawbdorg_A01701248.lugaresincidente(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE dawbdorg_A01701248.historico 
  ADD CONSTRAINT FK_historico_id_lugar FOREIGN KEY (id_lugar)
    REFERENCES dawbdorg_A01701248.lugaresincidente(id) ON DELETE NO ACTION ON UPDATE NO ACTION;