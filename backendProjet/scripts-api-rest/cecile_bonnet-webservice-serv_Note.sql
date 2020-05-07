/* Auteur : Cécile Bonnet matricule */


CREATE PROCEDURE proc_Note(in new_note INTEGER,new_utilisateur VARCHAR(50))
BEGIN 
  update dba.taches
  set note  = new_note
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Note" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Note(:new_note,:utilisateur);
