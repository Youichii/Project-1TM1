/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE "DBA"."proc_Com"(in utilisateur VARCHAR(16), new_com LONG VARCHAR, new_auteur VARCHAR(16))
BEGIN 
  insert into dba.commentaires
  (idCom,commentaire,auteur)
  VALUES 
  (utilisateur,new_com,new_auteur);
END


/******************************************************/


CREATE SERVICE "serv_com" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_com(:new_comm,:new_auteur,:utilisateur) ;
