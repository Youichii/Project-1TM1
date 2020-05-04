//Ajouter Un Commentaire -> récupère en paramètre l'utilisateur, le commentaire introduit et l'auteur du commentaire et va ajouter 
ces trois infos sous forme d'une ligne dans la table 'commentaire' \\

CREATE PROCEDURE "DBA"."proc_Com"(in utilisateur VARCHAR(25), new_com LONG VARCHAR, new_auteur VARCHAR(25))
BEGIN 

insert into dba.commentaires
(idCom,commentaire,auteur)
VALUES 

(utilisateur,new_com,new_auteur);
END


