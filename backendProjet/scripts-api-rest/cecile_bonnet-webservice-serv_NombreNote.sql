/* Auteur : Cécile Bonnet HE201796 */


CREATE  PROCEDURE proc_NombreNote(in new_utilisateur VARCHAR(16))
BEGIN 
  update dba.communaute 
  set nombreCote = nombre_cote + 1
  where idCom = new_utilisateur 
END
                                                             

/******************************************************/

CREATE SERVICE "serv_NombreNote" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_NombreNote(:new_utilisateur);
