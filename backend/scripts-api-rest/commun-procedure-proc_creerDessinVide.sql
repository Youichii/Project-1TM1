CREATE PROCEDURE "DBA"."proc_creerDessinVide"(in nombre integer)
BEGIN
    DECLARE i integer;

    DELETE from pixels;

    SET i = 1 ;
    WHILE i <= nombre LOOP
    insert into pixels () values ();
    SET i = i + 1 ;
    END LOOP ;
END;
