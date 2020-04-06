
/* ce service n'est pas accessible depuis l'interface */


CREATE PROCEDURE "DBA"."proc_initialiserPixels"(in nombre integer)
RESULT (i integer, c char(7), u varchar(20))
BEGIN
    DECLARE i integer;

    call sa_set_http_header('Access-Control-Allow-Origin', '*');

    DELETE from pixels;

    SET i = 1 ;
    WHILE i <= nombre LOOP
    insert into pixels () values ();
    SET i = i + 1 ;
    END LOOP ;

    call proc_dessin();
END;



/***********************************************************/

CREATE SERVICE "initialiser" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_initialiserPixels(:n);
