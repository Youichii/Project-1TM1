//Table des villes
CREATE TABLE villes(
    postal INTEGER NOT NULL,
    ville VARCHAR(50) NOT NULL,

    CONSTRAINT pk_villes PRIMARY KEY(postal)
) ;



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
    
    CONSTRAINT pk_communaute PRIMARY KEY(idCom),
    CONSTRAINT pk_communaute_villes FOREIGN KEY (postal) REFERENCES villes(postal) 
) ;



//Table avec toutes les tâches
CREATE TABLE taches(
    idCom VARCHAR(16) NOT NULL,
    tache VARCHAR(100) NOT NULL,
    details LONG VARCHAR NULL,
    categorie VARCHAR(10) NOT NULL,
    cote INTEGER NULL,

    CONSTRAINT pk_communaute_taches FOREIGN KEY(idCom) REFERENCES communaute(idCom)
) ;



//Table avec les commentaires
CREATE TABLE commentaires (
    idCom VARCHAR(16) NOT NULL,
    commentaire LONG VARCHAR NOT NULL,
    auteur VARCHAR(16) NOT NULL,

    CONSTRAINT pk_communaute_commentaires FOREIGN KEY(auteur) REFERENCES communaute(idCom)
) ;
ALTER TABLE "DBA"."commentaires" ADD CONSTRAINT "communaute" NOT NULL FOREIGN KEY ( "idCom" ASC ) REFERENCES "DBA"."communaute" ( "idCom" );



//Table qui permet de faire la transition entre 
CREATE TABLE transition(
    idTrans varchar(16) NOT NULL,
    idUtile varchar(16) NOT NULL
) ;
