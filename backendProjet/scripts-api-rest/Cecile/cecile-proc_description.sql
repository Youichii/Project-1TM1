// Changer La Description -> récupère la variable new_description dans un champ JS et va modifier la base de donnée 'communaute ' 
dans la colonne portrait uniquement là ou l'idCom est égale à la variable new_utilisateur\\ 

CREATE PROCEDURE proc_Desc(in new_desc LONG VARCHAR,new_utilisateur VARCHAR(50))

BEGIN 

update dba.communaute
set portrait  = new_desc
where idCom = new_utilisateur 

END

CREATE SERVICE "serv_Desc"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Desc(:new_desc,:new_utilisateur)
