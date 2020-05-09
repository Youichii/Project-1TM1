/* Auteur : Clémentine Sacré HE201876 */


CREATE PROCEDURE proc_donnees() 
RESULT (idCom VARCHAR(16), nom VARCHAR(30), prenom VARCHAR(30), photo VARCHAR(50), portrait VARCHAR(120), cote INTEGER)
BEGIN 
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select com.idCom, nom, prenom, photo, portrait, cote
    from dba.communaute as com 
    
END


/******************************************************/


CREATE SERVICE "serv_donnees" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_donnees();
