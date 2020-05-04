<!--Pour la page Profils-CS.html => Clémentine Sacré-----------------------------------------------------------------------------------> 

CREATE PROCEDURE proc_donnees() 
RESULT (idCom VARCHAR, nom VARCHAR, prenom VARCHAR, sexe CHAR(1), telephone VARCHAR, mail VARCHAR, anniversaire DATE, photo VARCHAR, portrait VARCHAR)
BEGIN
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select idCom, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait
    from dba.communaute ;
END ;




//Service qui appelle donnees
CREATE SERVICE "serv_donnees" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_donnees();


<!--Pour la page profilPrivé-CB.html => Cécile Bonnet---------------------------------------------------------------------------------->


// Changer Le Telephone\\ 

CREATE PROCEDURE proc_Telephone(in new_telephone VARCHAR(12),new_utilisateur VARCHAR(50))

BEGIN 

update dba.communaute
set telephone = new_telephone 
where idCom = new_utilisateur 

END

CREATE SERVICE "serv_Telephone"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Telephone(:new_telephone,:new_utilisateur)
____________________________________________________________________________________________________

//Changer Le Mail\\ 

CREATE PROCEDURE proc_Mail(in new_mail VARCHAR(20),new_utilisateur VARCHAR(50))

BEGIN 

update dba.communaute
set mail  = new_mail
where idCom = new_utilisateur 

END

CREATE SERVICE "serv_Mail"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Mail(:new_mail,:new_utilisateur)

____________________________________________________________________________________________________

// Changer La Description \\ 

CREATE PROCEDURE proc_Desc(in new_desc LONG VARCHAR,new_utilisateur VARCHAR(50))

BEGIN 

update dba.communaute
set portrait  = new_desc
where idCom = new_utilisateur 

END

CREATE SERVICE "serv_Desc"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Desc(:new_desc,:new_utilisateur)

________________________________________________________________________________________________________

// Changer La Ville \\ 

CREATE PROCEDURE proc_Ville(in new_ville VARCHAR(50),new_utilisateur VARCHAR(50))

BEGIN 

update dba.communaute
set ville  = new_ville
where idCom = new_utilisateur 

END

CREATE SERVICE "serv_Vill"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Ville(:new_ville,:new_utilisateur)



<!--Pour la page profilPublique-CB.html => Cécile Bonnet---------------------------------------------------------------------------------->

//Ajouter Un Commentaire\\

Create Procedure proc_com(in new_comm LONG VARCHAR, new_auteur VARCHAR(25), utilisateur VARCHAR(25))
BEGIN 

insert into dba.commentaires
(idCom,commentaire,auteur)
VALUES 

('new_com','new_auteur','utilisateur')
END

create service "serv_com"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_com(:new_comm,:new_auteur,:utilisateur)

______________________________________________________________________________________________________________________


//Noter La Personne\\

CREATE PROCEDURE proc_Note(in new_note INTEGER,new_utilisateur VARCHAR(50))

BEGIN 

update dba.taches
set note  = new_note
where idCom = new_utilisateur 

END

create service "serv_Note"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_Note(:new_note,:utilisateur)