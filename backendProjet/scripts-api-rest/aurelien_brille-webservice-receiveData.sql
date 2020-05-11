/* Auteur : Aurélien Brille HE201788*/


CREATE PROCEDURE "DBA"."inscription"(IN LastName long varchar, IN FirstName long VARCHAR, IN Username long varchar, IN uMail long varchar, IN uPhone long varchar, IN uVille long varchar, in uBirth DATE , in uPswd long varchar, in uSex long varchar, in Color long varchar)
BEGIN 
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    INSERT INTO dba.communaute (idCom, mdp, nom, prenom , sexe, telephone, mail, anniversaire, photo, postal)
    VALUES (Username, uPswd, FirstName , LastName, uSex, uPhone, uMail, uBirth, Color, uVille);
END


/******************************************************/


CREATE SERVICE "receiveData" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call inscription(:LastName,:FirstName,:Username,:uMail,:uPhone,:uVille,:uBirth,:uPswd,:uSex,:Color) ;
