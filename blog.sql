DROP DATABASE IF NOT EXIST monblog;
CREATE DATABASE monblog CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE monblog;

CREATE TABLE monblog_t_billet (
    BIL_ID int(11) NOT NULL AUTO_INCREMENT,
    BIL_DATE datetime NOT NULL,
    BIL_TITRE varchar(100) NOT NULL,
    BIL_CONTENU varchar(400) NOT NULL,
    PRIMARY KEY (BIL_ID)
);

CREATE TABLE monblog_t_commentaire (

    COM_ID int(11) NOT NULL AUTO_INCREMENT,
    COM_DATE datetime NOT NULL,
    COM_AUTEUR varchar(100) NOT NULL,
    COM_CONTENU varchar(200) NOT NULL,
    BIL_ID int(11) NOT NULL,
    PRIMARY KEY (COM_ID),
    FOREIGN KEY (BIL_ID) REFERENCES monblog_t_billet(BIL_ID)
)
