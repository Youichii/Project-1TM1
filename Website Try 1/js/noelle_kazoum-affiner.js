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
		finale += "<details class='informations'><summary class='summaryTache'>" + data[i].titre_tache + "</summary><ul>" ;
        finale += "<li class='idName'>Nom : " +data[i].nom + "</li>";
        finale += "<li class='idPren'>Prénom : " +data[i].prenom + "</li>";
        finale += "<li class='idEmail'>Mail : " +data[i].mail + "</li>";
        finale += "<li class='idVille'>Ville : " +data[i].ville + "</li>";
		finale += "</ul></details>" ;
    }
	document.getElementById("informations").innerHTML = finale ;
	//document.getElementById("informations").open ?????????????????????????????????
}

//AJOUTER UNE TACHE
// Partir du script, afficher dans le HTML et sauvegarder ensuite dans la base de donnée

function addTask(){
    let nouvelleTache, descriptionTache, categorieTache ;
    var l = document.getElementById("listeCategorie"); 
    categorieTache = l.options[l.selectedIndex].value;
    nouvelleTache = document.getElementById("titre").value;
    descriptionTache = document.getElementById("champDescri").value;
    let xhr = new XMLHttpRequest;
    xhr.open('get', "http://localhost/serv_ajouterTask?task_="+nouvelleTache+"&personne_="+document.body.id+"&desc_="+descriptionTache+"&cat_="+categorieTache, true);
    xhr.send();
    alert("Votre tâche " + nouvelleTache + " a bien été ajoutée !" );
}


//AFFINER LES TACHES
// Prendre les taches existantes à partir de la base de donnée et les trier dans le HTML

function affinerTache(){
    let xhr = new XMLHttpRequest();
	let jrep ;
    xhr.open('get', "http://localhost/serv_aff", true);
    xhr.onreadystatechange = function (){
            if (xhr.status == 200 && xhr.readyState == 4){
				jrep = JSON.parse(xhr.responseText) ;
		        let var1 = '<ul>';
				let var2 = '<ul>';
				let var3 = '<ul>';
				for (let i in jrep){
					document.getElementById("annonceur").innerHTML += var1 +'<li>'+ '<a onclick="cacher(\'pageprofilpublic_cb\'), pageChargement(\'' + jrep[i].idCom + '\');">' + jrep[i].nom +'</a>'+ '</li>' + '</ul>'; 
					document.getElementById("localisationId").innerHTML += var2 + '<li>' +"* " +  jrep[i].ville + '</li>'+'<li>'+ jrep[i].titre_tache +'</li>' + '<li>' +'<a onclick="cacher(\'pageprofilpublic_cb\'), pageChargement(\'' + jrep[i].idCom + '\');">'+"par:  "+ jrep[i].nom +'</a>'+'</li>'+ '</ul>' ;
					document.getElementById("AffinerDomaine").innerHTML += var3 +'<li>' + jrep[i].categorie  + " --->  " + jrep[i].titre_tache + '</li>'  +"par:"+'<li>' + '<a onclick="cacher(\'pageprofilpublic_cb\'), pageChargement(\'' + jrep[i].idCom + '\');">' + jrep[i].nom + '</a>' + '</li>' +'</ul>';
				}
		}
    }
    xhr.send();
}

