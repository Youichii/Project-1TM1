"use strict";
// auteur : Aurélien Brille matricule

/* ****************************** */

let profilConnexion = "";

function changePage(){
	let xhr = new XMLHttpRequest() ;
	let nom = document.getElementById("nomUtilisateur").value
	xhr.open('get', "http://localhost/serv_connexion?nomUtilisateur=" + nom + "&motDePasse=" + document.getElementById("motDePasse").value , true) ;
	xhr.onreadystatechange =
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					 profilConnexion = JSON.parse(xhr.responseText) ;
					if(profilConnexion.length){
						document.getElementById("blocCo").innerHTML = "<h1>Connexion Réussie</h1></br><a id='colorBlue' onclick='cacher(\"pageprofilprive_cb\"), pageChargementBis(document.body.id);'>Mon profil privé</a>";
						compte(nom) ;
					}
					else alert("Mauvais identifiants, réésayez ou inscrivez-vous");
				}
			}
  xhr.send();
  return false;
}
