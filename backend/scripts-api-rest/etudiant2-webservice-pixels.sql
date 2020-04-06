
/* auteur : étudiant 2 nom prénom matricule */


CREATE PROCEDURE "DBA"."proc_dessin"()
RESULT (i integer, c char(7), u varchar(20), t datetime )
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    SELECT id, couleur, utilisateur, DATEFORMAT(update_moment, 'YYYY-MM-DD HH:NN:SS')
    FROM pixels
    ORDER BY id asc;
END;


/******************************************************/


CREATE SERVICE "pixels" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_dessin();
