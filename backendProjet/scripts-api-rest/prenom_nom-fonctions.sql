CREATE FUNCTION "DBA"."fct_informations"(in identifiant VARCHAR(16))
RETURNS varchar(50)
BEGIN 
    DECLARE ville_finale varchar(50) ;
    SET ville_finale =(select ville 
                      from dba.communaute as com
                      natural join dba.villes 
                      where com.idCom = identifiant) ;
    return ville_finale ;
END;
