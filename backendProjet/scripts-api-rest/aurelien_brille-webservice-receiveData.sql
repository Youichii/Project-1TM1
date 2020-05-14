/* Auteur : Aurélien Brille HE201788*/


CREATE PROCEDURE "DBA"."inscription"(IN LastName varchar(30), IN FirstName VARCHAR(30), IN Username varchar(16), IN uMail varchar(40), IN uPhone varchar(15), IN uVille INTEGER, in uBirth DATE , in uPswd long varchar, in uSex char(1), in Color varchar(120))
BEGIN 
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    INSERT INTO dba.communaute (idCom, mdp, nom, prenom , sexe, telephone, mail, anniversaire, photo, postal)
    VALUES (Username, uPswd, FirstName , LastName, uSex, uPhone, uMail, uBirth, Color, uVille);
END;



/******************************************************/


CREATE SERVICE "receiveData" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call inscription(:LastName,:FirstName,:Username,:uMail,:uPhone,:uVille,:uBirth,:uPswd,:uSex,:Color) ;
