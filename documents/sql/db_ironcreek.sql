DROP DATABASE IF EXISTS db_ironcreek;

CREATE DATABASE db_ironcreek;

USE db_ironcreek;

CREATE TABLE tb_user (
	pk_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    userpassword VARCHAR(25) NOT NULL
    );
    
CREATE TABLE tb_aufgaben (
	pk_aufgabe INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    priority TINYINT NOT NULL,
    aufgabe VARCHAR(512) NOT NULL,
    notizen VARCHAR(512),
    datumbis DATE
    );
    
CREATE TABLE tb_user_aufgaben (
	FK_user INT NOT NULL,
    FK_aufgabe INT NOT NULL,
    FOREIGN KEY (fk_user) REFERENCES tb_user (pk_user),
    FOREIGN KEY (fk_aufgabe) REFERENCES tb_aufgaben (pk_aufgabe)
	);
    
CREATE TABLE tb_anlage (
	pk_anlage INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    anlagenname VARCHAR(255),
    filepath VARCHAR(255),
    fk_aufgabe INT NOT NULL,
    FOREIGN KEY (fk_aufgabe) REFERENCES tb_aufgaben (pk_aufgabe)
    );

INSERT INTO tb_user VALUES (1, 'NIRI', 'nico@rimle.ch', 'ichliebmismami'), (2, 'Reto', 'Remo@Remoschmitter.com', 'passwort'), (3, 'SQLj', 'davor.skulj@edu.tbz.ch', 'ichliebdereto'), (4, 'Jan', 'jan@eisenbach.ch', 'IchTunGernPfuuse'), (5, 'boeoe', 'mike@furrerit.ch', 'ILoveMyAnimeWaifuBodyPillow'), (6, 'Amplusrocks', 'info@amplus.ch', 'i<3Amplus');

INSERT INTO tb_aufgaben VALUES (1, 1, 'Die neu super cool Kamera chaufe, dass ich chan es Flugzueueg fotografiere', NULL , NULL);

INSERT INTO tb_user_aufgaben VALUES (2,1);

INSERT INTO tb_anlage VALUES (1, 'virus.exe', '../anlagen/virus.exe', 1);

SELECT * FROM tb_aufgaben;

#SELECT * FROM tb_user;