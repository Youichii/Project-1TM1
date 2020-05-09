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
    - serv_Desc :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_Mail :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_Notes :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_Telephone :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_Ville :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
               
    - serv_com :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_valeurs :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
    - serv_valeursBis :
      - Paramètres :
      - Format de réponse :
      - Endpoint  :
                
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
