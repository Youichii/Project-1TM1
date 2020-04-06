
/* ce service n'est pas accessible depuis l'interface */


CREATE PROCEDURE "DBA"."proc_initialiserPixelsRempli"(in dessin varchar(10))
RESULT (i integer, c char(7), u varchar(20))
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');

    IF dessin = 'baleine'
    THEN
        BEGIN
            call proc_dessinerBaleine(); 
        END

    ELSEIF dessin = 'souris'
    THEN
        BEGIN
            call proc_dessinerSouris();
        END

    ELSEIF dessin = 'oxo'
    THEN
        BEGIN
            call proc_dessinerOxo();
        END

ELSEIF dessin = '20sur20'
    THEN
        BEGIN
            call proc_dessiner20Sur20();
        END

    ELSE
        BEGIN
            call proc_creerDessinVide(625);
        END
    ENDIF;

    call proc_dessin();
        
END;

/* ***************************** */


CREATE SERVICE "dessiner" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_initialiserPixelsRempli(:dessin);

