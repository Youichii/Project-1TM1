
const REMPLIES = '🌕' ;
const VIDES = '🌑' ;
const MOITIE = '🌗' ;

/*◐●○*/
function demarrage() {
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
	let fiche = "", img, desc, cotation ;
	let plein, moitiePlein, pasPlein ;
	for (let i = 0 ; i < reponse.length ; i++) {
		img = '<img src="./img/'+ reponse[i].photo +'" alt="test" width="234" height="250"/>' ;
		if (reponse[i]['portrait'] == null) {
			desc = "Pas de description" ;
		}
		else {
			desc = reponse[i].portrait ;
		}
		
		
		cotation = "" ;
		if (reponse[i].cote == null) {
			cotation = "  " ;
		}
		else {
			moitie = reponse[i].cote / 2 ; 
			plein = parseInt(moitie) ;
			pasPlein = 5 - parseInt(moitie) ;
			moitiePlein = (moitie - parseInt(moitie))*2 ;
			for (let i = 0 ; i < plein ; i++) {
				cotation += REMPLIES ;
			}
			for (let i = 0 ; i < moitiePlein ; i++) {
				cotation += MOITIE ;
			}
			for (let i = 0 ; i < pasPlein ; i++) {
				cotation += VIDES ;
			}
		}
		
		fiche += '<div class="personne">\
					 <div class="avatars"> ' + img + '</div>\
					 <div class="desc">\
					 <div class="nom_com">' + reponse[i].prenom +  '<span id="cotation_personne">' + cotation + '</span></div>\
					 <div class="info"><br><br><br><br>' + desc + '</div>\
					 <div id="profil_bouton"><a href="root?url=PageProfilPublic-CB"><input onclick="blabla(\'' + reponse[i].idCom + '\');" type="button" value="Voir le profil" class="compte_bouton"></a></div>\
					 </div></div>' ;
	}
	return fiche ;
}

function blabla(code) {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/serv_stockage?identifiant=" + code , true) ; 
	xhr.onreadystatechange = 
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
						document.getElementById('principal').innerHTML = xhr.responseText ;
					}
			}
	xhr.send() ;
}


