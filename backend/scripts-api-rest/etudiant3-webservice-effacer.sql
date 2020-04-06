

/* auteur : étudiant 3 nom prénom matricule */


CREATE PROCEDURE "DBA"."proc_effacer"(in u varchar(20), in code varchar(20))
RESULT ("status" varchar(10), "message" varchar(100))
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');

    IF estUtilisateurValide(u, code) = 0
        THEN SELECT 'error', 'ERREUR EFFACER: utilisateur deja existant et code secret incorrect';
  
    ELSE
        BEGIN  
             UPDATE pixels SET couleur = '#FFFFFF', utilisateur = 'original', codeSecret = 'no'
               WHERE utilisateur = u AND codeSecret = code;
            SELECT 'erased', '';
        END
    ENDIF

END;


/* ************************************************** */

CREATE SERVICE "effacer" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call DBA.proc_effacer(u = :u,code = :s);
