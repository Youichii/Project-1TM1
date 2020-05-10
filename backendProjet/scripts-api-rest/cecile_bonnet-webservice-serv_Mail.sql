/* Auteur : Cécile Bonnet HE201796*\


CREATE PROCEDURE proc_Mail(in new_mail VARCHAR(20),new_utilisateur VARCHAR(50))
BEGIN 
  update dba.communaute
  set mail  = new_mail
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Mail" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Mail(:new_mail,:new_utilisateur);
