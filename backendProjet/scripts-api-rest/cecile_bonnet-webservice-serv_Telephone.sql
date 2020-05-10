/* Auteur : Cécile Bonnet HE201796 */


CREATE PROCEDURE proc_Telephone(in new_telephone VARCHAR(12),new_utilisateur VARCHAR(50))
BEGIN 
  update dba.communaute
  set telephone = new_telephone 
  where idCom = new_utilisateur 
END


/******************************************************/


CREATE SERVICE "serv_Telephone" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_Telephone(:new_telephone,:new_utilisateur);
