/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE proc_Desc(in new_desc VARCHAR(120),new_utilisateur VARCHAR(16))
BEGIN 
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  update dba.communaute
  set portrait  = new_desc
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Desc" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Desc(:new_desc,:new_utilisateur);
