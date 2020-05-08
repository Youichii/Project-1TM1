// pour ajouter des taches à la base de donnée

CREATE PROCEDURE proc_ajouterTask(in task_ VARCHAR (50), in personne_ VARCHAR, in desc_ LONG VARCHAR, in cat_ VARCHAR)
BEGIN
     insert into dba.taches
     (idCom, tache, details, categorie)
     VALUES
     (task_,personne_,desc_,cat_,)
END


CREATE SERVICE "serv_ajouterTask" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_ajouterTask(:task_,:personne_,:desc_,:cat_);

