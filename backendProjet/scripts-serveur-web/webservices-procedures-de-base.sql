//_______________________-Chemin de la base de données-________________________________

ALTER FUNCTION "DBA"."getPath"() 
returns long varchar deterministic 
BEGIN
    DECLARE dbPath long varchar; 
    DECLARE dbName long varchar;
    SET dbPath = (select db_property ('file'));
    SET dbName = (select db_property('name')) + '.db'; 
    SET dbPath = left(dbPath, length(dbPath)-length(dbName)); 
    RETURN dbPath ; 
END
//_______________________-CSS-________________________________

ALTER PROCEDURE "DBA"."http_getCSS"(in url char(255)) 
RESULT(css long varchar)
BEGIN
    CALL sa_set_http_header( 'Content-Type', 'text/css' );
    select xp_read_file(dba.getPath() || 'CSS\'|| url) ; 
END
//_______________________-Images-________________________________

ALTER PROCEDURE "DBA"."http_getIMG"(in filename char(255)) 
RESULT(img long varchar)
BEGIN
    CALL sa_set_http_header( 'Content-Type', 'image/png' );
    select xp_read_file(dba.getPath() || 'img\'|| filename) ; 
END
//_______________________-JavaScript-________________________________

ALTER PROCEDURE "DBA"."http_getJS"(in url char(255)) 
RESULT(js long varchar)
BEGIN
    CALL sa_set_http_header( 'Content-Type', 'text/js' );
    select xp_read_file(dba.getPath() || 'JS\'|| url) ; 
END
//_______________________-HTML-________________________________

ALTER PROCEDURE "DBA"."http_getPage"(in url char(255)) 
RESULT(html long varchar)
BEGIN
    CALL sa_set_http_header( 'Content-Type', 'text/html' );
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select xp_read_file(dba.getPath() || url || '.html'); 
END
