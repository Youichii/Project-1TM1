/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE proc_Note(in new_note INTEGER,new_utilisateur VARCHAR(12))
BEGIN 
  update dba.communautee
  set note  = new_note, nombreCote = nombreCote + 1 
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Note" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Note(:new_note,:utilisateur);
