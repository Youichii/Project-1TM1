/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE "DBA"."proc_valeursBis"(in usager VARCHAR(16)) 
RESULT (idCom VARCHAR(16), nom VARCHAR(30), prenom VARCHAR(30), sexe CHAR(1), telephone VARCHAR(15), mail VARCHAR(40), anniversaire DATE, photo VARCHAR(25), portrait VARCHAR(120), 
        titre_tache VARCHAR(100), commentaire LONG VARCHAR, auteur VARCHAR(16), cote INTEGER, ville VARCHAR(50))
BEGIN 
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select commu.idCom, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait, titre_tache, commentaire, auteur, cote, fct_informations(usager)
    from dba.communaute as commu
    left join dba.taches as tach on commu.idCom = tach.idCom
    left join dba.commentaires as comme on commu.idCom = comme.idCom
    
    where commu.idCom = usager 
END


/******************************************************/


CREATE SERVICE "serv_valeursBis" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_valeursBis(:usager);
