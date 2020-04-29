function demarrage() {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/json", true) ; 
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
	let fiche = "", img, desc, cotation ;
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
		}
		else {
			cotation =  '<span id="cotation_personne">' + reponse[i].cote + "/10" ;
		}
		
		fiche += '<div class="personne">\
					 <div class="avatars"> ' + img + '</div>\
					 <div class="desc">\
					 <div class="nom_com"><span id="prenom_personne">' + reponse[i].prenom + '</span>' + cotation + '</span></div>\
					 <div class="info"><br><br><br><br>' + desc + '</div>\
					 <div id="profil_bouton"><a href="root?url=PageProfilPublic-CB"><input onclick="blabla(\'' + reponse[i].idCom + '\');" type="button" value="Voir le profil" class="compte_bouton"></a></div>\
					 </div></div>' ;
	}
	return fiche ;
}

function blabla(code) {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/stockages?identifiant=" + code, true) ; 
	xhr.onreadystatechange = 
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
						xhr.responseText ;
					}
			}
	xhr.send() ;
}





