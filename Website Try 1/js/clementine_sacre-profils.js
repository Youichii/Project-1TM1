"use strict";
// auteur : Clémentine Sacré HE201876

/* ****************************** */

function demarrage_cs() {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/serv_donnees", true) ; 
	xhr.onreadystatechange = 
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
						document.getElementById('principal').innerHTML = affiche(xhr.responseText) ;
					}
			}
	xhr.send() ;
}


function affiche(texte) {
	let reponse = JSON.parse(texte) ;
	let fiche = "", img, desc, cotation, name, total ;
	let plein, moitiePlein, pasPlein ;
	for (let i = 0 ; i < reponse.length ; i++) {
		img = '<img src="img?url='+ reponse[i].photo +'" alt="test" width="234" height="250"/>' ;
		if (reponse[i]['portrait'] == null) {
			desc = "Pas de description" ;
		}
		else {
			desc = reponse[i].portrait ;
		}
		
		if (reponse[i].cote == null) {
			cotation = "" ;
			total = '<span>' + reponse[i].prenom + '</span>' ;
		}
		else {
			cotation =  '<span class="cotation_personne">' + reponse[i].cote/reponse[i].nbr + '/10 </span>' ;
			name = '<span class="prenom_personne">' + reponse[i].prenom + '</span>' ;
			total =  name + cotation ;
		}
		
		fiche += '<div class="personne">\
					 <div> ' + img + '</div>\
					 <div class="desc">\
					 <div class="nom_com">' + total + '</div>\
					 <div class="info"><br><br><br><br>' + desc + '</div>\
					 <div class="profil_bouton"><a onclick="cacher(\'pageprofilpublic_cb\'), pageChargement(\'' + reponse[i].idCom + '\');"><input type="button" value="Voir le profil" class="compte_bouton"></a></div>\
					 </div></div>' ;
	}
	return fiche ;
}
