# 1T-projet-final

# Présentation de l'équipe
Aurélien Brille, Cécile Bonnet, Clémentine Sacré, Noelle Khazoum

# Description du projet
  - BESOIN DU CLIENT
  
Nous désirons créer un site web qui permettra de déposer des annonces de travail et/ou d'en rechercher. Ces travaux constitueront uniquement en des petites tâches réalisables par tous (nettoyage, jardinage, photographie,...).


  - FONCTIONNALITÉS PRINCIPALES
  
    - Une page qui référence toutes les tâches postées sur le site et qui permet également à l'utilisateur d'en ajouter.
    - Un système de connexion/inscription qui servira à identifier un utilisateur en lui fournissant accès à une page "profil privé"           regroupant ses données ainsi qu'avoir accès à toutes les fonctionnalités du site.

  - FONCTIONNALITÉS SECONDAIRES
    
    - Une page d'accueil permettant de s'inscrire ou de se connecter sur le site.
    - Un profil public reprennant les données personnelles de chaque utilisateur, les commentaires des autres usagers ainsi qu'une note.
    - Un profil privé uniquement accessible par la personne connectée lui permettant de voir et modifier ses informations personnelles.
    - Une page listant tous les profils inscrits sur le site, et permettant d'accéder directement à leur profil public via un boutton.
    - Une fonctionnalité permettant de trier les tâches recherchées par mot-clés sur la page des tâches.

# Aspects implémentés
La liste des aspects techniques qu'il faut implémenter pour mettre en place le projet, en séparant les aspects backend (base de données, procédures SQL, webservices, serveur de fichiers) et les aspects frontend (html, css, js, page web et fonctionnalités à proposer aux utilisateurs). ???

  - Base de données : Tables reprenant les informations sur les personnes, les tâches que certaines personnes proposent, et les avis laissés par d'autres personnes aux utilisateurs ;
  - Procédures SQL : Tables allant chercher les informations selon la page sur laquelle son se trouve et pouvant modifier des données quand certains boutons le proposent et ajouter des données lors d'une inscription ;
  - Webservices : La plupart des webservices en JSON afin de modifier/ajouter/chercher des données ;
  - Serveur de fichiers : ?
  
  - HTML : page comprenant toutes les pages, affichant la page demandée et cachant le reste des pages en attendant ;
  - CSS : site le plus esthétique possible, et le plus ergonomique ; 
  - JS : fonctions appelées lors de l'affichage d'une page ou lors d'un appel de bouton ;
  - Page web : 
  - Fonctionnalités : permet s'inscrire/de se connecter. Egalement de déposer/chercher des tables, de mettre des avis/note aux différentes personnes de la communauté ;

# Détail api rest
endpoint = ce que fait ta procédure, son but, que fait-elle
format = ce qu'elle renvoie en quel format etc /!\ faire du français pas juste mettre les noms des colonnes
param = mm chose, que prend la procédure

- Aurélien Brille :
    - receiveData :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
      
    - serv_connexions :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
 
- Cécile Bonnet :
    - serv_Desc : appelle la procédure proc_Desc
      - Paramètres : Prend en paramètre, la nouvelle description introduite dans la page HTML privé & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va modifier la description de la personne connecté, dans la table communauté.
                
    - serv_Mail : appelle la procédure proc_Mail
      - Paramètres : Prend en paramètre la nourvelle adresse mail introduite dans la page HTML privé & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va modifier l'adresse mail de la personne connecté, dans la table communauté. 
                
    - serv_Notes :
      - Paramètres : Prend en paramètre, la nouvelle note introduite dans la page HTML publique & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va modifier la note de la personne connecté, dans la table communauté.
                
    - serv_Telephone : appelle la procédure proc_Telephone 
      - Paramètres : Prend en paramètre, la nouvelle description introduite dans la page HTML privé & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va modifier le telephone de la personne connecté, dans la table communauté.
                
    - serv_Ville : appelle la procédure proc_ville 
      - Paramètres : Prend en paramètre, la nouvelle description introduite dans la page HTML & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va modifier la ville de la personne connecté, dans la table communaué 
               
    - serv_com : appelle la procédure proc_com
      - Paramètres : Prend en paramètre, le nouveau commentaire , l'id de la personne chez qui est écrit le commentaire & l'id de la personne connecté 
      - Format de réponse : Pas de réponse -> Modifie la table 
      - Endpoint  : Va ajouter le commentaire introduit dans la page HTML publique dans la table commentaire avec l'id de l'auteur du commentaire ainsi que l'id du destinataire de ce commentaire.
                
    - serv_valeurs : appelle la procédure proc_valeurs 
      - Paramètres : prend en paramètre l'identifiant (idCom de la personne sur laquelle on a cliqué) 
      - Format de réponse : renvoie en JSON les information nécéssaire dans la page publique pour en faire un portrait visible par les autres utilisateurs. Pour cela nous avons besoin du nom [VARCHAR(30)], du prénom [VARCHAR(30)], du sex [CHAR(1)], du numéro de télephone [VARCHAR(15)], le mail [VARCHAR(40)], la date de naissance [DATE], la photo [VARCHAR(50)], le portrait [VARCHAR(120)], la ville via un join sur postal dans la table villes [INTEGER], la cote [INTEGER], les commentaires via un join sur idCom dans la table commentaires [ VARCHAR(120)] et pour finir les taches qu'il propose via un join sur idCom dans la table taches [ VARCHAR(100)]
      - Endpoint  : Lorsque la personne connecté click sur un des profils de la page communauté, les procédures renvoie les infos dans la page profil publique afin de se faire une idée sur la personne ainsi que de la contacter. 
                
    - serv_valeursBis : appelle la procédure proc_valeursBis 
      - Paramètres : prend en paramètre l'identifiant de la personne connecté 
      - Format de réponse : renvoie en JSON les information nécéssaire dans la page publique pour en faire un portrait visible par les autres utilisateurs. Pour cela nous avons besoin du nom [VARCHAR(30)], du prénom [VARCHAR(30)], du sex [CHAR(1)], du numéro de télephone [VARCHAR(15)], le mail [VARCHAR(40)], la date de naissance [DATE], la photo [VARCHAR(50)], le portrait [VARCHAR(120)], la ville via un join sur postal dans la table villes [INTEGER],  et pour finir les taches qu'il propose via un join sur idCom dans la table taches [ VARCHAR(100)]
      - Endpoint  : Cette procédure envoie dans la page du profil privé de la personne connecté les informations générales qu'il peut en partie modifier comme sa ville son mail, son portrait ext.. 
                
- Clémentine Sacré :
    - serv_donnees (appelle procédure "donnee"):
      - Paramètres : /
      - Format de réponse : renvoie en JSON le nom (varchar de 30) de toutes les personnes, ainsi que leur prénom (varchar de 30), leur photo (varchar de 50), leur portrait (varchar de 120) et leur cote (entier entre 0 et 10) afin de pouvoir afficher un pré-profil de chaque personne inscrite. Leur id (varchar de 16) est également renvoyé afin de pouvoir accéder à une autre page plus développée sur chacun d'eux ;
      - Endpoint  : Retrouve les données utiles pour la page communauté et les renvoie ;
 
 - Noelle Khazoum :
    - serv_aff :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_ajouterTask :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
               
  
# Détail DB
- Table des villes (contient 6 villes et leur code postal attitré) :
    - postal représente la PK de la table, qui représente le code postal d'une ville, en chiffre ;
    - ville représente le nom de la ville en lettre ;
    
- Table de la communauté (toutes les informations sur les personnes inscrites) :
    - idCom qui représente la PK de la table, l'identifiant de l'utilisateur, c'est le nom qu'il utilise pour se connecter ;
    - mdp représente le mot de passe que l'utilisateur utilise pour pouvoir se connecter au site ;
    - nom représente le nom de l'utilisateur ;
    - prenom représente le prénom de l'utilisateur ;
    - sexe représente le sexe de l'utilisateur ;
    - telephone représente le n° de téléphone de l'utilisateur, c'est par là que la communauté communique pour engager le travailleur pour la durée d'une tâche ;
    - mail représente le mail de l'utilisateur, autre moyen utilisé par la communauté pour communiquer entre elle ;
    - anniversaire représente l'anniversaire de la personne, ce qui permet de connaitre son âge ;
    - photo représente une photo de la personne. Il y a également des photos par défaut si la personne n'en a pas d'elle ;
    - portrait représente une courte description de l'utilisateur afin que la communauté en sache un peu plus sur lui ;
    - postal représente une FK dans la table et renvoie donc le code postal de la ville dans laquelle l'utilisateur habite vit ;
    - cote représente une note donnée par le reste de la communauté à l'utilisateur selon la qualité de ce qu'il fait (travail ou engage), ce qui permet d'avoir un premier appriori quant à la manière de faire de l'utilisateur  ;
    
- Table des tâches (toutes les tâches disponibles sur le site) :
    - idCom représente une FK dans la table, c'est l'identifiant de l'utilisateur qui propose la tâche ;
    - tache représente le nom de la tâche proposée par l'utilisateur ;
    - details représente une description brève de la tâche proposée par l'utilisateur ;
    - categorie représente le type/la catégorie de tâche que l'utilisateur a proposé ;
    
- Table des commentaires (avis que certaines personnes laissent à d'autres personnes) : 
    - idCom représente une FK dans la table, c'est l'identifiant de la personne chez qui on laisse le commentaire ;
    - commentaire représente un avis laissé repar un autre utilisateur, ce qui permet à la communauté d'avoir un avis sur l'utilisateur, positif ou négatif ;
    - auteur représente l'identifiant de la personne qui écrit le commentaire ;
