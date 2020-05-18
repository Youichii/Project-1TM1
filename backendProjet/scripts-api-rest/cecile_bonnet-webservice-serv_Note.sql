/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE "DBA"."proc_Note"(in new_note INTEGER, new_utilisateur VARCHAR(16))
BEGIN 
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  update dba.communaute
  set cote  = new_note, nombreCote = nombreCote + 1 
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Note" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Note(:new_note,:new_utilisateur);
