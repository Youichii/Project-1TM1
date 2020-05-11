"use strict";

// auteur : Noelle Kazoum HE201903

/* ****************************** */
// AFFICHER LES TACHES ET LES  INFORMATIONS

// Prendre les informations de la base de donnée et les metre dans le HTML dans un certain ordre

function affichageTache(){
    let xhr = new  XMLHttpRequest();
    xhr.open('get', "http://localhost/serv_aff", true);
    xhr.onreadystatechange =
        function (){
            if (xhr.status == 200 && xhr.readyState == 4){
                description_tache(xhr.responseText)
            }
        }
    xhr.send();
}

function description_tache(info){
    let data = JSON.parse(info);
	let finale = "" ;
    for (let i in data){
		finale += "<details class='informations'><summary class='summaryTache'>" + data[i].tache + "</summary><ul>" ;
        finale += "<li class='idName'>Nom :" +data[i].nom + "</li>";
        finale += "<li class='idPren'>Prénom :" +data[i].prenom + "</li>";
        finale += "<li class='idEmail'>Mail :" +data[i].mail + "</li>";
        finale += "<li class='idVille'>Ville :" +data[i].ville + "</li>";
		finale += "</ul></details>" ;
    }
	document.getElementById("informations").innerHTML = finale ;
}

//AJOUTER UNE TACHE
// Partir du script, afficher dans le HTML et sauvegarder ensuite dans la base de donnée

function addTask(){
	
	 let nouvelleTache, descriptionTache ;
	
	
	const coche = document.querySelectorAll('input [name="atache"]:checked');
	
	let categorieTache  ;
	coche.forEach((checkbox) => {
		categorieTache.push(checkbox.value);
	  }
	);
	
	
	


	nouvelleTache = document.getElementById("titre").value;

	descriptionTache = document.getElementById("champDescri").value;

    let xhr = new XMLHttpRequest;

    xhr.open('get', "http://localhost/serv_ajouerTask?task_="+nouvelleTache+"&personne_="+document.body.id+"&desc_="+descriptionTache+"&cat_="+categorieTache, true);

    xhr.send();

	console.log("Votre tâche  " + nouvelleTache + categorieTache +  " a bien été ajoutée !" );
	
   
}

//AFFINER LES TACHES
// Prendre les taches existantes à partir de la base de donnée et les trier dans le HTML

function affinerTache(){
    let xhr = new XMLHttpRequest();
    xhr.open('get', "http://localhost/serv_aff", true);
    xhr.onreadystatechange = function (){
            if (xhr.status == 200 && xhr.readyState == 4){
				let jrep = JSON.parse(xhr.responseText) ;
		                let var1 = '<ul>';
				let var2 = '<ul>';
				let var3 = '<ul>';

					

				for (let i in jrep){

					document.getElementById("annonceur").innerHTML += var1 +'<li>'+ '<a href = ProfilPublicPrive.js>' + jrep[i].nom +'</a>'+ '</li>' + '</ul>'; 

					document.getElementById("localisationId").innerHTML += var2 + '<li>' +"* " +  jrep[i].ville + '</li>'+'<li>'+ jrep[i].tache +'</li>' + '<li>' +'<a href = ProfilPublicPrive.js>'+"par:  "+ jrep[i].nom +'</a>'+'</li>'+ '</ul>' ;
					
					document.getElementById("AffinerDomaine").innerHTML += var3 +'<li>' + jrep[i].categorie  + " --->  " + jrep[i].tache + '</li>'  +"par:"+'<li>' + '<a href ="ProfilPublicPrive">' + jrep[i].nom + '</a>' + '</li>' +'</ul>';
						

				}
				
	
				
	 }
    }
    xhr.send();
}

