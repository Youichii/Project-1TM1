/* Auteur : Noelle Khazoum HE201903 */

CREATE PROCEDURE "DBA"."proc_ajouterTask"(in titreTask_ varchar(100), in personne_ VARCHAR(16), in desc_ long varchar, in cat_ varchar(4))
BEGIN 
     insert into dba.taches
     (idCom, desc_tache, idCat, titre_tache)
     VALUES 
     (personne_, desc_, cat_, titreTask_)
END


/******************************************************/


CREATE SERVICE "serv_ajouterTask" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_ajouterTask(:task_,:personne_,:desc_,:cat_);

