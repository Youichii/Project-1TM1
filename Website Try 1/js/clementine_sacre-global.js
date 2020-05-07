"use strict";
// auteur : Clémentine Sacré HE201876

/* ****************************** */

function start(ident) {
	cacher(ident) ;
}

function cacher(identifiant) {
	
	document.getElementById("accueil_ab").style.display = "none" ;
	document.getElementById("affiner_nk").style.display = "none" ;
	document.getElementById("ajouter_nk").style.display = "none" ;
	document.getElementById("loginpage_ab").style.display = "none" ;
	document.getElementById("pageprofilprive_cb").style.display = "none" ;
	document.getElementById("pageprofilpublic_cb").style.display = "none" ;
	document.getElementById("profils_cs").style.display = "none" ;
	document.getElementById("signuppage_ab").style.display = "none" ;
	document.getElementById("taches_nk").style.display = "none" ;
	
	document.getElementById(identifiant).style.display = "inline" ;
}

function compte(utilisateurEnCours) {
	document.getElementById("tout").id = utilisateurEnCours ;
}

