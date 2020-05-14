/* Auteur : Aurélien Brille HE201788 */


CREATE PROCEDURE "DBA"."proc_connexion"(in nomUtilisateur varchar(16), in motDePasse long varchar)
BEGIN 
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select idCom, mdp from dba.communaute where idCom = nomUtilisateur and mdp = motDePasse
END;



/******************************************************/


CREATE SERVICE "serv_connexion" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_connexion(:nomUtilisateur,:motDePasse);
