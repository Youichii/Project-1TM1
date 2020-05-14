//Table des villes
CREATE TABLE villes(
    postal INTEGER NOT NULL,
    ville VARCHAR(50) NOT NULL,

    CONSTRAINT pk_villes PRIMARY KEY(postal)
) ;



//Table des catégories
CREATE TABLE categories(
    idCat VARCHAR(4) NOT NULL,
    categorie VARCHAR(30) NOT NULL,

    CONSTRAINT pk_categories PRIMARY KEY(idCat)
) ;



//Table avec toutes les informations sur la personne
CREATE TABLE communaute (
    idCom VARCHAR(16) NOT NULL UNIQUE,
    mdp VARCHAR(20) NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    sexe CHAR(1) NOT NULL check(@col in ('M', 'F')),
    telephone VARCHAR(15) NOT NULL,
    mail VARCHAR(40) NOT NULL UNIQUE,
    anniversaire DATE NOT NULL,
    photo VARCHAR(25) NULL,
    portrait VARCHAR(120) NULL,
    postal INTEGER NOT NULL,
    cote INTEGER NULL,
    nombreCote INTEGER AUTOINCREMENT,
    
    CONSTRAINT pk_communaute PRIMARY KEY(idCom),
    CONSTRAINT pk_communaute_villes FOREIGN KEY (postal) REFERENCES villes(postal) 
) ;



//Table avec toutes les tâches
CREATE TABLE taches(
    idTaches INTEGER NOT NULL DEFAULT AUTOINCREMENT,
    idCom VARCHAR(16) NOT NULL,
    titre_tache VARCHAR(100) NOT NULL,
    desc_tache LONG VARCHAR NULL,
    idCat VARCHAR(4) NOT NULL,
    
    CONSTRAINT pk_communaute_taches FOREIGN KEY(idCom) REFERENCES communaute(idCom),
    CONSTRAINT pk_communaute_categories FOREIGN KEY(idCat) REFERENCES categories(idCat),
    CONSTRAINT pk_taches PRIMARY KEY(idTaches)
) ;



//Table avec les commentaires
CREATE TABLE commentaires (
    idCommentaires INTEGER NOT NULL DEFAULT AUTOINCREMENT,
    idCom VARCHAR(16) NOT NULL,
    commentaire LONG VARCHAR NOT NULL,
    auteur VARCHAR(16) NOT NULL,

    CONSTRAINT pk_communaute_commentaires FOREIGN KEY(auteur) REFERENCES communaute(idCom),
    CONSTRAINT pk_communaut_comment FOREIGN KEY(idCom) REFERENCES communaute(idCom),
    CONSTRAINT pk_commentaires PRIMARY KEY(idCommentaires)
) ;



