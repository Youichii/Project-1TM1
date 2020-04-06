
/* auteur : étudiant 1 nom prénom matricule */

CREATE PROCEDURE "DBA"."proc_colorier"(in i integer, in c char(7), in u varchar(20), in code varchar(20))
RESULT ("status" varchar(10), "message" varchar(100))
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');

    IF estUtilisateurValide(u, code) = 0
        THEN SELECT 'error', 'ERREUR COLORIER : utilisateur deja existant et code secret incorrect';
  
    ELSE
        BEGIN  
            UPDATE pixels SET couleur = c, utilisateur = u, codeSecret = code, "update_moment" = getDate()  WHERE id = i;
            SELECT 'colored', '';
        END
    ENDIF

END


  //call proc_dessin(); possibilité de renvoyer directement le résultat pour ne pas devoir faire deux requêtes
  //si deux requêtes, plus de chance que ce qu'on vient de faire soit réécrasé;


/******************************************************/

CREATE SERVICE "colorier" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call DBA.proc_colorier(i = :p,c = :c,u = :u,code = :s);
