"use strict";
// auteur : Cécile Bonnet HE201796
/* ****************************** */


var reponse ;
var info;


//////////////////////////////////////////////////////// Profil Publique/////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

function pageChargement(utilisateur){
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_valeurs?utilisateur=" + utilisateur, true) ; 
	xhr.onreadystatechange = function(){ 
		if (xhr.status == 200 && xhr.readyState == 4) {  
	        infos(xhr.responseText) ;
		}
	}
	xhr.send() ; 	
   
}
function identifiant(){
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Id", true) ; 
	xhr.onreadystatechange = function(){ 
		if (xhr.status == 200 && xhr.readyState == 4) {  
	       commentaires(JSON.parse(xhr.responseText)) ;
		}
	}
	xhr.send() ; 
console.log(id)	
}
 

function infos(donnee) {
    reponse = JSON.parse(donnee); 
	
    let nom, prenom, sexe, telephone, mail,anniversaire, photo, portrait, tache, commentaire, auteur, cote, ville ;
    let comment = "" ;
	nom = reponse[0].nom ;
	prenom= reponse[0].prenom ;
	sexe = reponse[0].sexe ;
	telephone = reponse[0].telephone ;
	mail = reponse[0].mail ; 
	anniversaire = reponse[0].anniversaire ;
	photo = reponse[0].photo ;
	
	portrait = reponse[0].portrait ;
	if(portrait == null){ 
		portrait = ("Pas de description pour le moment") 
	}
	else{
		portrait=reponse[0].portrait ;
	}
			
	commentaire = reponse[0].commentaire
    for(let i = 0; i< reponse.length; i++){	;
	    if(commentaire == null ) {
		    comment = " Pas de commentaire pour le moment" ;
	    }
	     else {
		    comment += " - " + reponse[i].commentaire + " par " + reponse[i].auteur +"<br>" ;
	    }
    }
	
	cote=reponse[0].cote ;
	if(cote == null ) {
		cote = " Pas de cote pour le moment" ;
	}
	else {
		cote=reponse[0].cote ;
	}
	
	tache = reponse[0].tache ;
	if(tache == null){
		tache = "Pas de tâche pour le moment" ;
		console.log(tache) ;
	}
	else{
		tache = reponse[0].tache ;
		console.log(tache) ;
	}
	
	ville = reponse[0].ville ;
    document.getElementById("page").innerHTML = prenom + ' ' + nom + ' ' + '<br>' + sexe + '<br>' + ville + '<br>' + telephone + '<br>' + mail + '<br>' + anniversaire + '<br>' + portrait ;
    document.getElementById("notation").innerHTML = cote ;
    document.getElementById("zonecomm").innerHTML = comment ;
    document.getElementById("tache").innerHTML = tache ;
	document.getElementById("mon_img").innerHTML =  '<img src="img?url='+ photo +'" alt="test" id="photo_img" width="234" height="250"/>' ;	
}


function note(){
	let inter = Number(reponse[0].cote)
	let newN = +prompt("Veuillez introduire une note sur 10") ;
	let newNote
	 
	if(newN <= 10 && newN > 0 && newN != String){
		if(inter === null ){
			newNote = 0
			newNote= newN
		}
        else{
			newNote = 0
			newNote += (newN + inter)/2 ;
			console.log(newNote)
			alert("votre cote à bien été enregistré")
		}		
	}
	else{
		alert("Entrée non valide") 
	}
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Note?new_note="+newNote+"&utilisateur="+reponse[0].idCom, true) ;
	console.log(reponse[0].idCom)	
	console.log("coucou")
	xhr.send() ;
	document.getElementById("notation").innerHTML = newNote
}
	
function commentaires(){
	let newAuteur = String(document.getElementById("utilisateur").value) ;
	let newCommentaire= document.getElementById("comm").value ;
	alert("Votre commentaire à bien été enregistré");
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Com?utilisateur="+reponse[0].idCom +"&new_com="+newCommentaire+"&new_auteur="+newAuteur, true) ;
	xhr.send() ; 
	document.getElementById("zonecomm").innerHTML +=  " - " + newCommentaire + " par " + newAuteur +"<br>" ;
}	
	
//////////////////////////////////////////////////////////////////////////Profil privé ///////////////////////////////////////////////////////////////////////////////////////////////
function pageChargementBis(user){
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_valeursBis?usager=" + user, true) ; 
	xhr.onreadystatechange = function(){ 
		if (xhr.status == 200 && xhr.readyState == 4) {  
	        informations(xhr.responseText) ;
		}
	}
	xhr.send() ; 	
	console.log(user)
}


function informations(donnee) {
    info = JSON.parse(donnee); 
	console.log(info) ;
    let nom, prenom, sexe, telephone, mail,anniversaire, photo, portrait, tache, ville ;
	ville=info[0].ville
	nom =info[0].nom
	prenom= info[0].prenom ;
	sexe = info[0].sexe ;
	telephone = info[0].telephone ;
	mail = info[0].mail ;
	anniversaire = info[0].anniversaire ;
	console.log(anniversaire)
	photo = info[0].photo
	
	portrait=info[0].portrait
	if(portrait == null){ 
		portrait = ("Pas de description pour le moment") 
	}
	else{
		portrait=info[0].portrait
	}
	
	tache = info[0].tache
	photo = info[0].photo
	if(tache == null){

		tache ="Vous n'avez pas de tâches pour le moment"
	}
	else{
		tache = info[0].tache
	}

	document.getElementById("nom_cb").innerHTML = prenom +  ' ' + nom 
    document.getElementById("sexe").innerHTML =  sexe 
    document.getElementById("anniversaire").innerHTML = anniversaire 
    document.getElementById("telephone").innerHTML = telephone + ' <input type="button" onclick="changTelephone()" value="Changer le Numéro de Telephone" id="Tel" class="change">'
    document.getElementById("mail").innerHTML = mail + ' <input type="button" onclick="changMail()" value="Changer l\'adresse Mail" id="Mail" class="change">'
    document.getElementById("ville").innerHTML = ville  + 
			            "<select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>"
			            + ' <input type="button" onclick="changVille()" value="Changer la ville" id="Ville" class="change">'
	
	document.getElementById("services").innerHTML= tache;
    console.log(tache)
    document.getElementById("description").innerHTML = portrait
    console.log(portrait)
    document.getElementById("cadrephoto").innerHTML =  '<img src="img?url='+ photo +'" alt="test" width="234" height="250"/>' ;
}

function changTelephone(){
	let newTelephone = prompt("Introduire votre nouveau numéro de telephone");
	console.log(newTelephone)
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Telephone?new_telephone="+newTelephone+ "&new_utilisateur="+document.body.id, true) ;
	
	xhr.send() ;
	alert("Votre Numéro de telephone a bien été changé");
	document.getElementById("telephone").innerHTML = newTelephone+ ' <input type="button" onclick="changTelephone()" value="Changer le Numéro de Telephone" id="Tel" class="change">'
	
} // fonctionne 


function changMail(){
	let newMail = prompt("Introduire votre nouveau mail");
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Mail?new_mail="+newMail+ "&new_utilisateur="+document.body.id, true) ;
	
	xhr.send() ;
	alert("Votre Mail a bien été changé");
	document.getElementById("mail").innerHTML = newMail+ ' <input type="button" onclick="changMail()" value="Changer l\'adresse Mail" id="Mail" class="change">'
} // fonctionne 


function changVille(){
	let newVille = document.getElementById("viLLe").value
	console.log(newVille + "  bonjour")
	if( newVille == 1000	) {document.getElementById("ville").innerHTML = 'Bruxelles' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 1348 ) {document.getElementById("ville").innerHTML = 'Louvain-La-Neuve' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 2000 ) {document.getElementById("ville").innerHTML = 'Anvers' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 3500 ) {document.getElementById("ville").innerHTML = 'Hasselt' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 4000 ) {document.getElementById("ville").innerHTML = 'Liège' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 5000 ) {document.getElementById("ville").innerHTML = 'Namur' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	else if( newVille == 6600 ) {document.getElementById("ville").innerHTML = 'Bastogne' +"   <select  name='villes' id='viLLe' class='change'><option value='1000'>1000 - Bruxelles</option><option value='1348' selected>1348 - Louvain-la-Neuve</option><option value='2000'>2000 - Anvers</option><option value='3500'>3500 - Hasselt</option><option value='4000'>4000 - Liège</option><option value='5000'>5000 - Namur</option><option value='6600'>6600 - Bastogne</option></select>" +
	                                            ' <input type="button" onclick="changVille()" value="Changer la ville" id="ville" class="change">'}
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Ville?new_ville="+newVille+ "&new_utilisateur="+document.body.id, true) ;
	
	xhr.send() ;
	alert("Votre Ville a bien été changé");											
}

function changDescription(){ 
	let newDescription = document.getElementById("descriptionTexte").value ;
	console.log(newDescription) ;
	let xhr = new XMLHttpRequest() ;  
	xhr.open('get', "http://localhost/serv_Desc?new_desc="+newDescription+"&new_utilisateur="+document.body.id, true) ;
	
	xhr.send() ;
	alert("Votre Description a bien été changé");
	document.getElementById("description").innerHTML = newDescription
} // fonctionne 
