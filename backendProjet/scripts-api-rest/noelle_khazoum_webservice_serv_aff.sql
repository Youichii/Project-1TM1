// pour affiner les taches selon la catégorie

CREATE PROCEDURE proc_aff ()
RESULT (a_nom VARCHAR, a_prenom VARCHAR, a_email VARCHAR, a_telephone VARCHAR, a_ville VARCHAR, a_postal VARCHAR, a_tache VARCHAR, a_description LONG VARCHAR)
BEGIN
   call sa_set_http_header('Access-Control-Allow-Origin', '*');
   select idCom, categorie, tache, details, nom, prenom, email, telephone, ville, postal
   from dba.communaute as C
   left join dba.taches as T on C.idCom = T.idCom
   left join dba.ville as V on C.postal = V.postal
END;


CREATE SERVICE "serv_aff"
  TYPE 'JSON'
  AUTHOTIZATION OFF
  USER "DBA"
  URL ON
  METHODS 'GET'
AS call proc_aff(:a_nom,:a_prenom,:a_email,:a_telephone,:a_ville,:a_tache,:a_description);
