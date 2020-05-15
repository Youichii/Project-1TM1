/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE proc_Ville(in new_ville VARCHAR(50), new_utilisateur VARCHAR(16))
BEGIN
update dba.communaute 
set postal = new_ville
where idCom = new_utilisateur 
END

/******************************************************/


CREATE SERVICE "serv_Ville" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Ville(:new_ville,:new_utilisateur);
