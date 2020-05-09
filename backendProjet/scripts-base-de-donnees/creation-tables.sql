//Table des villes
CREATE TABLE villes(
    postal INTEGER NOT NULL,
    ville VARCHAR(50) NOT NULL,

    CONSTRAINT pk_villes PRIMARY KEY(postal)
) ;



//Table des catégories
CREATE TABLE categories(
    idCat VARCHAR(4) NOT NULL,
    categorie VARCHAR(11) NOT NULL,

    CONSTRAINT pk_categories PRIMARY KEY(idCat)
)



//Table avec toutes les informations sur la personne
CREATE TABLE communaute (
    idCom VARCHAR(16) NOT NULL,
    mdp VARCHAR(20) NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    sexe CHAR(1) NOT NULL check(@col in ('M', 'F')),
    telephone VARCHAR(15) NOT NULL,
    mail VARCHAR(40) NOT NULL,
    anniversaire DATE NOT NULL,
    photo VARCHAR(50) NULL,
    portrait VARCHAR(120) NULL,
    postal INTEGER NOT NULL,
    cote INTEGER NULL,
    
    CONSTRAINT pk_communaute PRIMARY KEY(idCom),
    CONSTRAINT pk_communaute_villes FOREIGN KEY (postal) REFERENCES villes(postal) 
) ;



//Table avec toutes les tâches
CREATE TABLE taches(
    idCom VARCHAR(16) NOT NULL,
    tache VARCHAR(100) NOT NULL,
    details LONG VARCHAR NULL,
    idCat VARCHAR(4) NOT NULL,
    
    CONSTRAINT pk_communaute_taches FOREIGN KEY(idCom) REFERENCES communaute(idCom),
    CONSTRAINT pk_communaute_categories FOREIGN KEY(idCat) REFERENCES categories(idCat)
) ;



//Table avec les commentaires
CREATE TABLE commentaires (
    idCom VARCHAR(16) NOT NULL,
    commentaire LONG VARCHAR NOT NULL,
    auteur VARCHAR(16) NOT NULL,

    CONSTRAINT pk_communaute_commentaires FOREIGN KEY(auteur) REFERENCES communaute(idCom)
) ;
ALTER TABLE "DBA"."commentaires" ADD CONSTRAINT "communaute" NOT NULL FOREIGN KEY ( "idCom" ASC ) REFERENCES "DBA"."communaute" ( "idCom" );




