/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE "DBA"."proc_valeursBis"(in usager VARCHAR(16)) 
RESULT (idCom VARCHAR, nom VARCHAR, prenom VARCHAR, sexe CHAR(1), telephone VARCHAR, mail VARCHAR, anniversaire DATE, photo VARCHAR, portrait VARCHAR, 
        tache VARCHAR, commentaire VARCHAR, auteur VARCHAR, cote VARCHAR, ville VARCHAR)
BEGIN 
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select commu.idCom, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait, tache, commentaire, auteur, cote, fct_informations(usager)
    from dba.communaute as commu
    left join dba.taches as tach on commu.idCom = tach.idCom
    left join dba.commentaires as comme on commu.idCom = comme.idCom
    
    where commu.idCom = usager 
END


/******************************************************/


CREATE SERVICE "serv_valeursBis" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_valeursBis(:usager);
