/* Auteur : Clémentine Sacré HE201876 */


CREATE PROCEDURE proc_donnees() 
RESULT (idCom VARCHAR, nom VARCHAR, prenom VARCHAR, sexe CHAR(1), telephone VARCHAR, mail VARCHAR, anniversaire DATE, photo VARCHAR, portrait VARCHAR)
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select idCom, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait
    from dba.communaute ;
END ;


/******************************************************/


CREATE SERVICE "serv_donnees" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_donnees();
