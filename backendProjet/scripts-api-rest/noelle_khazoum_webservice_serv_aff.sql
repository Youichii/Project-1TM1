/* Auteur : Noelle Khazoum HE201903 */

CREATE PROCEDURE "DBA"."proc_aff" ()
RESULT (nom VARCHAR(30),prenom VARCHAR(30),mail VARCHAR (40), telephone VARCHAR (15), ville VARCHAR(50), titre_tache VARCHAR(100), desc_tache  VARCHAR, categorie VARCHAR (30))
BEGIN
   call sa_set_http_header('Access-Control-Allow-Origin', '*');
   select nom, prenom, mail, telephone, ville, titre_tache, desc_tache, categorie
   from dba.communaute as C
   join dba.taches as T on C.idCom = T.idCom
   join dba.villes as V on C.postal = V.postal
   natural join dba.categories as cat on T.idCat = cat.idCat
   group by C.nom, C.prenom, C.mail, C.telephone, V.ville, T.titre_tache, T.desc_tache, cat.categorie
   order by cat.categorie 
END


/******************************************************/


CREATE SERVICE "serv_aff" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_aff();

