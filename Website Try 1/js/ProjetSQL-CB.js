
// combien d'infos qui rentrent ? => Nom; Prénom; Sexe;
// profil publique 

var utilisateur
 
// 1) envoie les info de clem à la table transition  
// je dois trouver ou mettre le "code" 
function blabla(code) {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/stockages?identifiant=" + code , true) ; 
	xhr.onreadystatechange = 
			function () {
				if (xhr.status == 200 && xhr.readyState == 4) {
						 JSON.parse(xhr.responseText) ;
					}
			}
	chargementPage();
	pageChargement();
	xhr.send() ;
}

// 2) va chercher dans la table 'transition' chercher l'id de l'utilisateur 
function chargementPage() {
	
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/recherches", true) ; 
	xhr.onreadystatechange = function(){
		if (xhr.status == 200 && xhr.readyState == 4) {  
			
			utilisateur=JSON.parse(xhr.responseText) ;  
		}
		
	}
	xhr.send() ; 	
}

// 3)  va chercher dans la table communauté : l'Id, le Nom et le Prenom
function pageChargement(){
	
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_valeurs", true) ; 
	xhr.onreadystatechange = function(){ 
		if (xhr.status == 200 && xhr.readyState == 4) {  
			
	        infos(xhr.responseText) 
		}
		
	}
	
	xhr.send() ; 	

}

// 4) utilise l'id utilisateur pour rechercher les informations de l'utilisateur 
function infos(donnee) {
	
	let reponse = JSON.parse(donnee);
	console.log(reponse); 
	utilisateur = "alex12"
	let valeurs
	let nom, prenom, sexe, telephone, mail,anniversaire, photo, portrait, tache, commentaire, auteur, cote 
	
	for(i=0; i<reponse.length; i++){
		if(reponse[i].idCom == utilisateur){
			console.log(reponse[i])
			
			nom =reponse[i].nom
			prenom= reponse[i].prenom
		    sexe = reponse[i].sexe 
			telephone = reponse[i].telephone
			mail = reponse[i].mail
			anniversaire = reponse[i].anniversaire
			photo = reponse[i].photo
			portrait = reponse[i].portrait
			tache = reponse[i].tache
			commentaire = reponse[i].commentaire
		    auteur = reponse[i].auteur 
		    cote = reponse[i].cote
			
		}
	
	}
	
	document.getElementById("page").innerHTML = prenom + ' ' + nom + ' ' + '<br>' + sexe + '<br>' + telephone + '<br>' + mail + '<br>' + anniversaire + '<br>'  
	document.getElementById("note").innerHTMLHTML = cote 
	document.getElementById("zonecomm").innerHTML= commentaire + ' par ' + auteur 
	 
	// il faut un return mais je ne sais pas quoi mettre dedans 	
}

