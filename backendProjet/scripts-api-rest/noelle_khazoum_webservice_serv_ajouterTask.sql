/* Auteur : Noelle Khazoum HE201903 */

CREATE PROCEDURE "DBA"."proc_ajouterTask"(in titreTask_ varchar(100), task_ integer, in personne_ integer, in desc_ long varchar, in cat_ varchar(30))
BEGIN 
     insert into dba.taches
     (idCom, idTaches, desc_tache, idCat, titre_tache)
     VALUES 
     (task_,personne_,desc_,cat_,titreTask_);
END


/******************************************************/


CREATE SERVICE "serv_ajouterTask" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_ajouterTask(:task_,:personne_,:desc_,:cat_);

