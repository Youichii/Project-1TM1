Clem - profils
__________________________________________________________________________________________________________________________
let personne = [
{nom : 'Beauthier', prenom : 'Lisa', age : 23, sexe : 'F', etoile : '★☆☆☆☆', description : "J'aime courir partout en criant houlala", photo : "lisbonne.png"},
{nom : 'Kikou', prenom : 'Tom', age : 12, sexe : 'M', etoile : '★★★★★', description : "J'aime être en confinement et ne rien faire du tout!", photo : "rio.jpg"},
{nom : 'Abracadabra', prenom : 'Alban', age : 45, sexe : 'M', etoile : '★★★★☆', description :"Aller chercher du chocolat au magasin, c'est ma passion", photo : "professeur.jpg"},
{nom : 'Akina', prenom : 'Amélie', age : 27, sexe : 'F', etoile : '★★★☆☆', description : "Je tonds la pelouse aussi vite que flash mcqueen", photo : "tokyo.jpg"},
{nom : 'Bibou', prenom : 'Laura', age : 34, sexe : 'F', etoile : '★★★☆☆', description : "J'aime les pâtes", photo : "alicia.jpg"},
{nom : 'Boh', prenom : 'Aladin', age : 13, sexe : 'M', etoile : '★★★☆☆', description : "Qui pisse contre le vent se rince les dents", photo : "berlin.jpg"},
{nom : 'Ahah', prenom : 'Robin', age : 98, sexe : 'M', etoile : '★★★☆☆', description : "I travelled the world and the seven seas, everybody's looking for something", photo : "bogota.jpg"},
{nom : 'Loulo', prenom : 'Mireille', age : 30, sexe : 'F', etoile : '★★★☆☆', description : "Il en faut peu pour être heureux", photo : "palerme.jpg"},
{nom : 'Mimi', prenom : 'Martine', age : 67, sexe : 'F', etoile : '★★★☆☆', description : "Hasta la vista", photo : "nairobi.jpg"},
{nom : 'Narci', prenom : 'Eliot', age : 50, sexe : 'M', etoile : '★★★☆☆', description : "Je suis à la cuisine ce que Mozart est à la musique classique", photo : "helsinki.jpg"}
]

function demarrage() {
	
	let fiche = "", img ;
	for(let i in personne) {
		img = '<img src="img/'+ personne[i].photo +'" alt="test" width="234" height="250"/>' ;
		fiche += "<div class='personne'>\
		             <div class='avatars'> " + img + "</div>\
					 <div class='desc'>\
					 <div class='nom_com'>" + personne[i].prenom + "     " + personne[i].etoile + "</div>\
					 <div class='info'><br><br><br><br>" + personne[i].description + "</div>\
			         <div id='profil_bouton'><input type='button' value='Voir le profil' class='compte_bouton'></div>\
					 </div></div>" ;
	}
	document.getElementById("principal").innerHTML = fiche ;	
}

function test() {
	
}




Aurélien - inscri/connx/accueil
______________________________________________________________________________________________________________________________________


Noelle - taches
______________________________________________________________________________________________________________________________________


Cécile - profil particulier et privé
______________________________________________________________________________________________________________________________________
