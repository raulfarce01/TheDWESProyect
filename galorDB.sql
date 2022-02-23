CREATE DATABASE IF NOT EXISTS galorDB;
USE galorDB;

CREATE TABLE IF NOT EXISTS user(
	idUser INT PRIMARY KEY AUTO_INCREMENT,
    nombreUser VARCHAR(100) NOT NULL,
    ap1 VARCHAR(100) NOT NULL,
    ap2 VARCHAR(100),
    nickname VARCHAR(25) NOT NULL,
    passwd VARCHAR(25) NOT NULL,
    correoUser VARCHAR(200) NOT NULL,
    fotoPerfil LONGBLOB
);

CREATE TABLE IF NOT EXISTS img(
    idImg INT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS likes(
    idImg INT NOT NULL,
    idUser INT NOT NULL,
    numLikes INT,
    PRIMARY KEY (idImg, idUser),
    FOREIGN KEY (idImg) REFERENCES img(idImg)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idUser) REFERENCES user(idUser)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS coment(
    idImg INT NOT NULL,
    idUser INT NOT NULL,
    text VARCHAR(10000) NOT NULL,
    PRIMARY KEY (idImg, idUser),
    FOREIGN KEY (idImg) REFERENCES img(idImg)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idUser) REFERENCES user(idUser)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);