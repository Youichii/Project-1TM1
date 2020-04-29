//Lien entre Profils-CS et ProfilPublic-CB
CREATE PROCEDURE proc_stockage (identifiant char(16)) 
BEGIN 
    INSERT INTO transition 
    (idTrans, idUtile)
    VALUES 
    ('nom', identifiant);
END ;




//Service qui appelle stockage
CREATE SERVICE "serv_stockage" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call stockage(:identifiant);
