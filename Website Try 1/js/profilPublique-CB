


var utilisateur
var reponse 

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
//////////////////////////////////////////////////////// Profil Publique/////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

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


function infos(donnee) {
	
	reponse = JSON.parse(donnee); 
	utilisateur = "alex12"
	let nom, prenom, sexe, telephone, mail,anniversaire, photo, portrait, tache, commentaire, auteur, cote, ville 
	let comment=""
	for(i=0; i<reponse.length; i++){
		if(reponse[i].idCom == utilisateur){
			
			nom =reponse[i].nom
			prenom= reponse[i].prenom
		    sexe = reponse[i].sexe
			
			telephone = reponse[i].telephone
			mail = reponse[i].mail
			anniversaire = reponse[i].anniversaire
			photo = reponse[i].photo
			portrait = reponse[i].portrait
			commentaire = reponse[i].commentaire
			if(commentaire == null ) {
				comment = " Pas de commentaire pour le moment"
			}
			else {
			    comment += " - " + reponse[i].commentaire + " par " + reponse[i].auteur +"<br>"
				
			}
		    cote=reponse[i].cote 
		    if(cote == null ) {
				cote = " Pas de cote pour le moment"
			}
			else {
				cote=reponse[i].cote
			}
			photo = reponse[i].photo
			tache = reponse[i].tache
            if(tache == null){
				
				tache = "Pas de tâche pour le moment" 	
            console.log(tache)				
			}
			else{
				tache = reponse[i].tache
				console.log(tache)
			}
			ville = reponse[i].ville
			
		}
	
	}
	
	document.getElementById("page").innerHTML = prenom + ' ' + nom + ' ' + '<br>' + sexe + '<br>' + ville + '<br>' + telephone + '<br>' + mail + '<br>' + anniversaire + '<br>' + portrait
	document.getElementById("notation").innerHTML = cote 
	document.getElementById("zonecomm").innerHTML = comment
	document.getElementById("tache").innerHTML = tache 
	
	 	
}

function note(){
	let newNote = +prompt ("Veuillez introduire une note sur 10")
	
	let inter = document.getElementById("notation").value
	 
	if(newNote <= 10 && newNote > 0 && newNote != String){
		if(inter = String){
			
		}
        else if ( inter = Number){
			newNote = (newNote + inter)/2
			
			}		
	}
	else{alert("Entrée non valide")}
	
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Note?new_note="+newNote+"&new_utilisateur="+utilisateur, true) ;
	
	xhr.send() ; 	
	

}
	
function commentaires(){
	let compteur = 0
	
	let newAuteur = document.getElementById("utilisateur").value
	
	let newCommentaire= document.getElementById("comm").value
	 
	for ( let i=0; i<reponse.length; i++){
		
		if(reponse[i].idCom == String(newAuteur )){
			compteur+=1
			 console.log(compteur) 
		     console.log(String(newAuteur))
		
		}
	}
		if (compteur == 1){
			alert("Votre commentaire à bien été enregistré");
			
			let xhr = new XMLHttpRequest() ;  
	        xhr.open('get', "http://localhost/serv_Com?utilisateur="+utilisateur+"&new_com="+newCommentaire+"&new_auteur="+newAuteur, true) ;
	
	        xhr.send() ; 
		}
		else {
			alert("personne inconnue"); 
			
		} 
		
	
		
     
	
	
	
		
	
}	
	


//////////////////////////////////////////////////////////////////////////Profil privé ///////////////////////////////////////////////////////////////////////////////////////////////

function pageChargementBis(){
	
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_valeurs", true) ; 
	xhr.onreadystatechange = function(){ 
		if (xhr.status == 200 && xhr.readyState == 4) {  
			
	        informations(xhr.responseText) 
		}
		
	}
	
	xhr.send() ; 	

}

function informations(donnee) {
	
	reponse = JSON.parse(donnee); 
	utilisateur = "alex12"
	let nom, prenom, sexe, telephone, mail,anniversaire, photo, portrait, tache
	
	for(i=0; i<reponse.length; i++){
		if(reponse[i].idCom == utilisateur){
			ville=reponse[i].ville
			nom =reponse[i].nom
			prenom= reponse[i].prenom
		    sexe = reponse[i].sexe 
			telephone = reponse[i].telephone
			mail = reponse[i].mail
			anniversaire = reponse[i].anniversaire
			photo = reponse[i].photo
			portrait = reponse[i].portrait
			tache = reponse[i].tache
			photo = reponse[i].photo
            if(tache == null){
				
				tache ="Vous n'avez pas de tâches pour le moment" 			
			}
			else{
				tache = reponse[i].tache
			}
		}
	
	}
	
	document.getElementById("valeurs").innerHTML = prenom +  ' ' + 
	                                            nom  +
 									   '<br>' + sexe + 
									   '<br>' + anniversaire +
									   '<br>' + telephone + ' <input type="button" onclick="changTelephone()" value="Changer le Numéro de Telephone" id="Tel" class="change">'+
									   '<br>' + mail + ' <input type="button" onclick="changMail()" value="Changer l\'adresse Mail" id="Mail" class="change">'+
									   '<br>' + ville  + ' <input type="button" onclick="changVille()" value="Changer la Ville" id="Vill" class="change">'
									  
					     
	
	document.getElementById("services").innerHTML= tache;
	console.log(tache)
	document.getElementById("description").innerHTML = portrait
	console.log(portrait)
	document.getElementById("cadrephoto").innerHTML =  '<img src="img?url='+ photo +'" alt="test" width="234" height="250"/>' ;
	
	
	 	
}

function changTelephone(){
	newTelephone = prompt("Introduire votre nouveau numéro de telephone");
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Telephone?new_telephone="+newTelephone+ "&new_utilisateur="+utilisateur, true) ;
	
	xhr.send() ;
	alert("Votre Numéro de telephone a bien été changé");
} // fonctionne 

function changMail(){
	newMail = prompt("Introduire votre nouveau mail");
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Mail?new_mail="+newMail+ "&new_utilisateur="+utilisateur, true) ;
	
	xhr.send() ;
	alert("Votre Mail a bien été changé");
} // fonctionne 

function changVille(){
	newVille = prompt("Introduire votre nouvelle ville");
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Ville?new_ville="+newVille+ "&new_utilisateur="+utilisateur, true) ;
	
	xhr.send() ;
	alert("Votre Ville a bien été changé");
	
}

function changDescription(){ 
	newDescription = document.getElementById("descriptionTexte").value 
	console.log(newDescription)
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Desc?new_desc="+newDescription+"&new_utilisateur="+utilisateur, true) ;
	
	xhr.send() ;
	alert("Votre Description a bien été changé");
} // fonctionne 
