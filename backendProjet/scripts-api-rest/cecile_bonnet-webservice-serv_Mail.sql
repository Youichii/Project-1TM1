/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE proc_Mail(in new_mail VARCHAR(40),new_utilisateur VARCHAR(16))
BEGIN 
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  update dba.communaute
  set mail  = new_mail
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Mail" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Mail(:new_mail,:new_utilisateur);
