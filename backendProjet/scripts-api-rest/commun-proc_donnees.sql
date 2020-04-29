//Pour la page Profils-CS.html
CREATE PROCEDURE "DBA"."donnees"() 
RESULT (idCom VARCHAR, nom VARCHAR, prenom VARCHAR, sexe CHAR(1), telephone VARCHAR, mail VARCHAR, anniversaire DATE, photo VARCHAR, portrait VARCHAR)
BEGIN 
    
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select idCom, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait
    from dba.communaute ;

END




//Lien entre Profils-CS et ProfilPublic-CB
CREATE PROCEDURE stockage (identifiant char(16)) 
BEGIN 
    INSERT INTO transition 
    (idTrans, idUtile)
    VALUES 
    ('nom', identifiant);
END ;
