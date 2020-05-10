// Utilise la base de donnée pour affiner les tâches dans la page Affiner et affiche également les tâches dans la page Tâches
ALTER PROCEDURE "DBA"."proc_aff" ()

RESULT (nom VARCHAR(50),prenom VARCHAR(50),mail VARCHAR (60), telephone VARCHAR (15), ville VARCHAR(50), tache long VARCHAR, details LONG VARCHAR)

BEGIN

   call sa_set_http_header('Access-Control-Allow-Origin', '*');

   select nom, prenom, mail, telephone, ville, tache, details

   from dba.communaute as C

   join dba.taches as T on C.idCom = T.idCom

   join dba.villes as V on C.postal = V.postal
   
   group by C.nom, C.prenom, C.mail, C.telephone, V.ville, T.tache, T.details

END




CREATE SERVICE "serv_aff" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_aff();
