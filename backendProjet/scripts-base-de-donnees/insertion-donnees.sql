//Ajout des villes et des codes postaux
INSERT INTO villes
(postal, ville)
VALUES
(5000,'Namur'),
(1348,'Louvain-la-Neuve'),
(2000,'Anvers'),
(4000,'Liège'),
(6600,'Bastogne'),
(1000,'Bruxelles'),
(3500,'Hasselt');



//Ajout des catégories et de leur id
INSERT INTO categories
(idCat, categorie)
VALUES
('c01','autre'),
('c02','garage'),
('c03','jardin'),
('c04','maison'),
('c05','reparation');



//Ajout des données dans la table communauté
INSERT INTO communaute
(idCom, mdp, nom, prenom, sexe, telephone, mail, anniversaire, photo, portrait, postal, cote, nombreCote)
VALUES
('alizee13', '1', 'Smith', 'Alizée', 'F', '+32437384726', 'smith.alizee@gmail.com', '1987-04-13', 'fantome_mauve.png', 'J''adore les animaux, le chocolat et faire la fête !', 6600, 7, 1),
('ambre21', '2', 'Turner', 'Ambre', 'F', '+32425363748', 'turner.ambre@gmail.com', '1994-12-21', 'ambre.jpg', 'Je fais de l''atléthisme 3 fois semaine et le reste du temps je vais à la salle.', 2000, 7, 1),
('leon01', '3', 'Jones', 'Léon', 'M', '+32412436489', 'jones.leon@gmail.com', '1988-11-01', 'fantome_bleu.png', 'Je suis né avec un appareil photo dans une main, et une guitare dans l''autre.', 1348, 4, 1),
('adam09', '4', 'Williams', 'Adam', 'M', '+32409854567', 'williams.adam@gmail.com', '1997-01-09', 'adam.jpg', NULL, 1000, NULL, 0),
('blanche23', '5', 'Davis', 'Blanche', 'F', '+32445367810', 'davis.blanche@gmail.com', '1990-02-25', 'blanche.jpg', 'J''habite près de Nantes, j''ai 2 enfants et je suis avocate.', 1348, 2.5, 1),
('morgan53', '6', 'Wilson', 'Morgan', 'M', '+32454446738', 'wilson.morgan@gmail.com', '1999-07-08', 'morgan.jpg', 'Je suis fleuriste à mi-temps, le reste du temps je fais de vélo dans les Ardennes.', 3500, 2.5, 1),
('marcel12', '7', 'Clark', 'Marcel', 'M', '+32448281909', 'clark.marcel@gmail.com', '2000-09-17', 'fantome_jaune.png', 'Je fais beaucoup de foot et de théatre, et en plus je sais chanter.', 1000, 10, 1),
('edouard75', '8', 'Hall', 'Edouard', 'M', '+32466745398', 'hall.edouard@gmail.com', '1999-11-18', 'edouard.jpg', NULL, 4000, 5.5, 1),
('lou15', '9', 'County', 'Lou', 'M', '+32475655768', 'county.lou@gmail.com', '1980-05-22', 'lou.jpg', 'J''adore voyager, j''ai visité la plupart des continents. Ces vacances-ci j''opte pour l''Océanie !', 4000, 8.5, 1),
('jade35', '10', 'Wheeler', 'Jade', 'F', '+32488675908', 'wheeler.jade@gmail.com', '1985-08-02', 'fantome_rose.png', NULL, 5000, 9, 1),
('clemence75', '11', 'Powell', 'Clémence', 'F', '+32455463758', 'powell.clemence@gmail.com', '1986-07-26', 'fantome_mauve.png', NULL, 1348, 7, 1),
('aubin87', '12', 'Long', 'Aubin', 'M', '+32400989075', 'long.aubin@gmail.com', '1989-07-30', 'aubin.jpg', 'Je suis cycliste professionel, j''ai fais 3 fois le tour de France et j''adore ça.', 1000, 3.1, 1),
('colin23', '13', 'Palmer', 'Colin', 'M', '+32409765665', 'palmer.colin@gmail.com', '1995-06-30', 'colin.jpg', 'Je suis passé à The Voice l''année passée car j''adore chanter.', 2000, 4, 1),
('elsa86', '14', 'Cox', 'Elsa', 'F', '+32422341198', 'coxe.elsa@gmail.com', '1992-10-28', 'fantome_mauve.png', 'Je fais de la boxe ainsi que de la danse classique, je cherche l''équilibre parfait.', 3500, 5, 1),
('adele98', '15', 'Ward', 'Adèle', 'F', '+32490908754', 'ward.adele@gmail.com', '1992-11-29', 'adele.jpg', 'Je suis très gourmande et je suis maniaque du rangement.', 1000, NULL, 0),
('louis46', '16', 'Watson', 'Louis', 'M', '+32411324325', 'watson.louis@gmail.com', '1994-12-12', 'fantome_bleu.png', NULL, 1000, 9, 1),
('pierre26', '17', 'Mills', 'Pierre', 'M', '+32409876547', 'mills.pierre@gmail.com', '1981-01-11', 'pierre.jpg', NULL, 1348, NULL, 0),
('agathe86', '18', 'Moore', 'Agathe', 'F', '+32423456789', 'moore.agathe@gmail.com', '1965-04-10', 'fantome_rose.png', 'On a déménagé en Belgique depuis 12ans, et on a 3 chiens !', 2000, 2.5, 1),
('apolinne98', '19', 'King', 'Apolinne', 'F', '+32488765460', 'king.apolinne@gmail.com', '1983-06-06', 'apolinne.jpg', 'Je suis mariée depuis 10ans, je suis femme au foyer et je chercher de quoi m''occuper durant mes temps libres.', 1348, 2, 1),
('henri14', '20', 'Ford', 'Henri', 'M', '+32409573849', 'ford.henri@gmail.com', '1992-03-27', 'henri.jpg', NULL, 1000, NULL, 0),
('hugues11', '21', 'Mary', 'Hugues', 'M', '+32400697895', 'mary.hugues@gmail.com', '1997-02-18', 'fantome_bleu.png', 'Je fais du saut en parachute tous les samedis.', 6600, 7, 1),
('patricia09', '22', 'Reid', 'Patricia', 'F', '+32476639201', 'reid.patricia@gmail.com', '1998-08-15', 'patricia.jpg', 'J''adore prendre des photos de moi et parler de shopping.', 5000, 4.3, 1),
('felix78', '23', 'Armstrong', 'Félix', 'M', '+32406847219', 'armstrong.felix@gmail.com', '1999-09-20', 'fantome_mauve.png', 'Je fais du rugby depuis 13ans et je mange beaucoup de fruits.', 1000, 7.5, 1),
('marie54', '24', 'Lincoln', 'Marie', 'F', '+32483920955', 'lincoln.marie@gmail.com', '1991-05-20', 'marie.jpg', 'Je fais de la corde à sauter et de la marelle à mes heures perdues.', 1348, NULL, 0),
('charles75', '25', 'Richards', 'Charles', 'M', '+32486756473', 'richards.charles@gmail.com', '1990-06-13', 'charles.jpg', NULL, 1000, 10, 1),
('estelle87', '26', 'Hunter', 'Estelle', 'F', '+32409689705', 'hunter.estelle@gmail.com', '1994-12-17', 'fantome_rose.png', NULL, 1348, NULL, 0),
('alex12', '27', 'Evans', 'Alex', 'M', '+32414254718', 'evans.alex@gmail.com', '1995-04-19', 'alex.jpg', 'J''essaie de me faire grandir en allant voir dans de nouveaux domaines.', 1000, 9.5, 1),
('auguste34', '28', 'Tryniski', 'Auguste', 'M', '+32463112842', 'tryniski.auguste@gmail.com', '1989-02-04', 'auguste.jpg', 'J''adore sortir en boîte et acheter la bouteille la plus chère au bar.', 3500, 10, 1),
('paul33', '29', 'Bennett', 'Paul', 'M', '+32447263546', 'bennett.paul@gmail.com', '1987-12-12', 'paul.jpg', NULL, 1348, 0.5, 1),
('jeanne77', '30', 'Holmes', 'Jeanne', 'F', '+32490098153', 'holmes.jeanne@gmail.com', '1985-11-11', 'fantome_mauve.png', 'Je souhaite sortir de ma zone de confort.', 1000, NULL, 0),
('francoise98', '31', 'Rose', 'Françoise', 'F', '+32435466287', 'rose.francoise@gmail.com', '1986-07-19', 'francoise.jpg', 'J''adore regarder l''horizon et me perdre dans mes pensées.', 2000, 8, 1),
('oscar90', '32', 'Rice', 'Oscar', 'M', '+32412445367', 'rice.oscard@gmail.com', '1995-09-26', 'oscard.jpg', NULL, 3500, 10, 1),
('gaspard78', '33', 'Perry', 'Gaspard', 'M', '+32465647893', 'perry.gaspard@gmail.com', '1992-10-23', 'fantome_bleu.png', 'On m''appelle souvent Casper.', 6600, NULL, 0),
('sophia32', '34', 'Evans', 'Sophia', 'F', '+32405837583', 'evans.sophia@gmail.com', '1991-08-21', 'fantome_mauve.png', 'Quoi de mieux qu''un petit mojito et une terrasse pour passer de bonnes vacances.', 4000, 8, 1),
('sacha73', '35', 'Chapman', 'Sacha', 'M', '+32464271853', 'chapman.sacha@gmail.com', '1980-02-05', 'sacha.jpg', 'Je n''aime pas trop parler aux gens longtemps.', 5000, 7, 1),
('celine84', '36', 'Kennedy', 'Céline', 'F', '+32409584631', 'kennedy.celine@gmail.com', '1979-04-30', 'celine.jpg', 'Je joue au tennis en professionnel.', 1000, NULL, 0),
('noemie30', '37', 'Murphy', 'Noémie', 'F', '+32481938437', 'murphy.noemie@gmail.com', '1975-04-01', 'fantome_mauve.png', NULL, 5000, 9, 1),
('victor89', '38', 'Murray', 'Victor', 'M', '+32401948562', 'murray.victor@gmail.com', '1997-05-19', 'victor.jpg', NULL, 3500, 6, 1),
('emma70', '39', 'Lawrence', 'Emma', 'F', '+32474261841', 'lawrence.emma@gmail.com', '1991-07-17', 'emma.jpg', 'Je suis assez timide.', 1348, 4, 1),
('oscar51', '40', 'Thomson', 'Oscar', 'M', '+32486737462', 'thomson.oscar@gmail.com', '1986-01-24', 'oscar.jpg', 'J''ai fais top1 sur Fortnite', 6600, NULL, 0),
('leonie64', '41', 'Scott', 'Léonie', 'F', '+32483171343', 'scott.leonie@gmail.com', '1989-03-09', 'leonie.jpg', 'J''adore courir jusqu''à sentir mes poumons en feu', 2000, 9, 1),
('achille23', '42', 'Wood', 'Achille', 'M', '+32413219590', 'wood.achille@gmail.com', '1981-06-03', 'achille.jpg', NULL, 3500, 4, 1),
('martine64', '43', 'Young', 'Martine', 'F', '+32459182345', 'young.martine@gmail.com', '1946-09-05', 'fantome_rose.png', 'Pourquoi parler quand on peut se taire ?', 1000, 5, 1),
('clotaire87', '44', 'Page', 'Clotaire', 'M', '+32454166756', 'page.clotaire@gmail.com', '1972-12-13', 'clotaire.jpg', 'J''adore me lever à 14h, prendre du coca et retourner me coucher.', 1348, 10, 1),
('max97', '45', 'Knight', 'Max', 'm', '+32436548219', 'knight.max@gmail.com', '1999-10-26', 'max.jpg', NULL, 2000, 7, 1),
('emile42', '46', 'Taylor', 'Emile', 'M', '+32445542627', 'taylor.emile@gmail.com', '1986-10-27', 'emile.jpg', NULL, 1000, 3, 1),
('zoe73', '47', 'Ward', 'Zoé', 'F', '+32434219948', 'ward.zoe@gmail.com', '1992-11-15', 'fantome_mauve.png', NULL, 4000, NULL, 0),
('victoire72', '48', 'Davies', 'Victoire', 'F', '+32400912486', 'davies.victoire@gmail.com', '1989-06-25', 'victoire.jpg', 'J''aime beaucoup le contact social, j''en ai besoin.', 1000, NULL, 0),
('hector09', '49', 'Wallace', 'Hector', 'M', '+32413451665', 'wallace.hector@gmail.com', '2001-08-08', 'fantome_bleu.png', 'J''essaie de commencer le volley mais c''est dur.', 2000, 8, 1),
('melchior98', '50', 'Wallace', 'Melchior', 'M', '+32442847481', 'wallace.melchior@gmail.com', '1998-09-14', 'melchior.jpg', 'Je me balade 1h30 par jour, je bois du thé et je suis végétarien.', 1348, 1, 1);





//Ajout des tâches dans tâches
INSERT INTO taches
(idCom, titre_tache, desc_tache, idCat)
VALUES
('ambre21', 'Tondre la pelouse', 'Bonjour ! Je me propose pour tondre votre pelouse, j''ai de l''endurance, je sais tenir longtemps. J''habite dans les environs de Liège.', 'c03'),
('morgan53', 'Planter des fleurs', 'Bonjour, ayant fait des études de jardinage, je me propose pour planter votre fleurs avec délicatesse.', 'c03'),
('victoire72', 'Laver les voitures', 'En ces beaux jours d''été je vous propose de laver vos voitures à petits prix.', 'c02'),
('clotaire87', 'Faire le lave-vaisselle', 'Votre vaisselle s''entasse depuis maintenant 3 mois? Je suis là ! Ayant travailler 4 ans à la plonge, j''ai le coup de main pour nettoyer la vaiselle.', 'c04'),
('victor89', 'Ranger les chambres', 'Bonjour, je vous propose de ranger les chambres que ce soit celles d''adultes, d''ados, ou encore d''enfants !', 'c04'),
('jeanne77', 'Tondre le jardin', 'J''ai la dernière tondeuse de chez Samsung alors comptez sur moi pour etre rapide et efficace', 'c03'),
('celine84', 'Regonfler les pneus de voiture', 'En tant qu''ancien mécano, j''ai tout le matériel qu''il faut pour une mise à jour de vos pneus !', 'c02'),
('auguste34', 'Tuyauterie', 'Bachelier en tuyauterie, faites moi confiance, je suis habile de mes deux mains.', 'c04'),
('aubin87', 'Réparer des vélos', 'Je répare vos vélos aussi rapidement que possible !', 'c05'),
('elsa86', 'Tailler la haie', 'Bonjour, j''amène ma propre tailleuse et échelle, je m''occupe de tout.', 'c03'),
('estelle87', 'Nettoyer les autos', 'Il est temps que vous laviez votre voiture !! N''attendez plus pour m''appeler.', 'c02'),
('sophia32', 'Aspirer les voitures', 'J''aspire vos voitures, malheureusement je ne fais pas l''extérieur je suis allergique à l''eau', 'c02'),
('oscar51', 'Nettoyer la piscine', 'Le printemps prend fin, bientôt un an que vous n''avez plus lavé votre piscine ? Je suis là !', 'c04'),
('oscar90', 'Rattrapage', 'Si vous avez des soucis en cours dans n''importe quelle matière, je donne des rattrapages jusqu''au niveau de 4e secondaire.', 'c01'),
('marie54', 'Construire une cabane de jardin', 'Je suis bo en construction donc si vous avez besoin d''aide pour construire votre cabane, appelez moi.', 'c03'),
('adam09', 'Construire enclos animaux (poules, lapins, ...)', 'Je construis des abris adaptés à vos animaux, il est important qu''ils aient un endroit pour vivre convenable.', 'c01'),
('gaspard78', 'Laver les animaux', 'J''ai 17 chats, 2 renards, 6 oiseaux, 1 serpent et 4 chiens que je lave tous les jours. Je pense donc être à la hauteur pour laver vos animaux avec le plus de délicatesse possible.', 'c01'),
('jade35', 'Repassage', 'Bonjour, je repasse vos chemises et tout autre chose dans la région du Brabant Wallon', 'c04'),
('achille23', 'Babysitting', 'Je garde vos enfants entre 6 mois et 216 mois.', 'c01'),
('emile42', 'Je vais faire vos courses', 'Je me propose pour aller faire vos courses à votre place, dans les environs de Namur.', 'c01'),
('edouard75', 'Conseiller en plantes', 'Je suis herbologiste, si vous avez des conseils je suis donc à votre disposition', 'c03'),
('francoise98', 'Babysitteuse', 'J''adore les enfants, je suis grande soeur de 2 petites soeurs et 3 petits frère, j''ai donc la fibre maternelle.', 'c01'),
('hector09', 'Cours d''anglais et de math', 'J''ai un doctorat en mathémtiques et j''ai fais 3 ans aux USA, j''ai donc les compétences pour vous permettre de réussir votre année.', 'c01'),
('zoe73', 'Déraciner les mauvaises plantes', 'Il est très important de garder un jardin en bonne santé, je me propose pour vous aider en retirer les mauvaises herbes !', 'c03'),
('marcel12', 'Déraciner les arbres', 'Je me propose pour participer à la déforstation en retirant les arbres qui vous gênent, n''attendez plus.', 'c03'),
('agathe86', 'Apprendre le français', 'Je suis native française et j''ai un bachelier en langue romane.', 'c01'),
('max97', 'Laver les vitres', 'Vous avez plein de traces de doigts sur votre vitre ? Faites appel à moi !', 'c04'),
('blanche23', 'Cueillir fruits (pommes, cerises, poires,...)', 'Je cueille vos fruits, j''amène mes paniers et mon échelle.', 'c03'),
('henri14', 'Faire des desserts', 'Ma maman est cuisnière professionnelle, et il semblerait que j''ai récupéré cette fibre.', 'c04'),
('leon01', 'Photographe', 'J''ai un appareil de super bonne qualité, je me propose donc pour prendre des photos de ce que vous voulez.', 'c01'),
('alizee13', 'Sortir les animaux de compagnie', 'Si vous n''avez pas le temps pour sortir vos animaux, je me propose pour le faire.', 'c01'),
('patricia09', 'Peindre des murs', 'Bonjour, j''adore peindre , alors si vous avez besoin de repeindre quoi que ce soit, je suis là !', 'c04'),
('melchior98', 'Dressage de chevaux', 'Ma grand-mère a une écurie, j''y passe tous les étés, je m''y connais donc en chevaux !', 'c01'),
('leonie64', 'Faire la cuisine', 'Je vous offre mes mains pour faire de la pâtisserie de préférence !! En plus j''adore manger.', 'c04');



//Ajout des commentaires dans les commentaires
INSERT INTO commentaires
(idCom, commentaire, auteur)
VALUES
('morgan53', 'Très bon travail, je recommande chaudement.', 'sacha73'),
('victoire72', 'Travail bien fait.', 'paul33'),
('patricia09', 'Consciencieuse et motivé ! Je referais appelle à elle.', 'hugues11'),
('ambre21', 'Super travail !', 'pierre26'),
('sophia32', 'Un peu déçu du travail mais personne serviable.', 'apolinne98'),
('edouard75', 'Gentil et appliqué.', 'colin23'),
('jade35', 'Le travail est fait rapidement et proprement.', 'adele98'),
('clotaire87', 'Arrive en retard et n''est pas très aimable mais un travail exemplaire.', 'martine64'),
('gaspard78', 'Je suis très satisfait du travail fourni.', 'emma70'),
('zoe73', 'Bien. Je recommande.', 'felix78'),
('max97', 'Pas trop mal.', 'clemence75'),
('leonie64', 'Super travail !', 'marcel12'),
('oscar51', 'Travail appliqué et propre.', 'alex12'),
('celine84', 'Je ne recommande pas!', 'charles75'),
('victor89', 'Malgré un leger retard, le travail est bien fait', 'felix78'),
('francoise98', 'Travail appliqué et personne charmante.', 'agathe86'),
('marcel12', 'Je ne suis pas satisfaite du travail.', 'blanche23'),
('aubin87', 'Parfait ! Rien à dire.', 'celine84'),
('oscar90', 'Charmante personne par qui je repasserais certainement.', 'jade35'),
('blanche23', 'Travail fait rapidement et avec la bonne humeur.', 'melchior98'),
('melchior98', 'Mon cheval est super bien dresser maintenant, Melchior est digne de confiance !', 'jeanne77'),
('leonie64', 'Fin cordon bleu', 'elsa86'),
('henri14', 'La pâtisserie goûtait le plastique ... Déçue.', 'alizee13'),
('alizee13', 'Mon chien revient à chaque fois exténué ! Je recommande', 'achille23'),
('elsa86', 'Je conseille ses services, rien à redire.', 'ambre21'),
('estelle87', 'Il a fait une griffe sur ma portière. Pas très délicat.', 'gaspard78'),
('achille23', 'Mes filles l''adorent ! Toujours souriant et de bonne humeur.', 'hugues11'),
('leon01', 'Fait des photos tout bonnement magnifiques... On l''a appelé pour notre mariage et on a pas été déçu du tout.', 'francoise98');
