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
	
	

    

    for (let i in data){
		
		//document.getElementById("tacheSummary").innerHTML += '<ul>' + '<li>' + data[0].tache + '</li>' + '</ul>';
		
		//document.getElementById("idDescription").innerHTML += data[0].details;

        document.getElementById("idName").innerHTML += data[0].nom ;

        document.getElementById("iidPren").innerHTML += data[0].prenom;

        document.getElementById("idEmail").innerHTML += data[0].mail;

        document.getElementById("idVille").innerHTML += data[0].ville ;

    }
	
	
	







}







//AJOUTER UNE TACHE

// Partir du script, afficher dans le HTML et sauvegarder ensuite dans la base de donnée






function addTask(){

    let nouvelleTache, descriptionTache, categorieTache ;
	let nom_cat = document.getElementsByTagName("a_tache");

    if (nom_cat.checked == "maison"){

        categorieTache = "maison";
		

    }



    else if (nom_cat.checked == "jardin"){

        categorieTache = "jardin";
		

    }



    else if (nom_cat.checked == "garage"){

        categorieTache = "garage";

    }



    else if (nom_cat.checked == "autre"){

        categorieTache = "autre";

    }
	
	
	else if (nom_cat.checked == "reparation"){
		
		categorieTache ="reparation";
	}
	
	
	nouvelleTache = document.getElementById("titre").value;
	
	descriptionTache = document.getElementById("champDescri").value;
		
		
		





    let xhr = new XMLHttpRequest;

    xhr.open('get', "http://localhost/serv_ajouerTask?task_="+nouvelleTache+"&personne_="+document.body.id+"&desc_="+descriptionTache+"&cat_="+categorieTache, true);

    xhr.send();
	
	
	//console.log("Votre tâche a bien été ajoutée !" );

}



//AFFINER LES TACHES

// Prendre les taches existantes à partir de la base de donnée et les trier dans le HTML





function affinerTache(informations){

    let xhr = new XMLHttpRequest();

    xhr.open('get', "http://localhost/serv_affiner/", true);

    

    xhr.onreadystatechange = function (){

            if (xhr.status == 200 && xhr.readyState == 4){

                affiner(xhr.responseText);



            }

    }

    xhr.send();


}





function  affiner(txt){



     let jrep = JSON.parse(txt);
	 

   



    for(let i = 0; i =jrep.length; i++){

        if (jrep [i] == "maison"){

             document.getElementsById("idMaison").innerHTML += '<ul>'+ '<li>'+'<a href ="#">'+ jrep [i].tache + '</a>'+ '</li>' + '</ul>'; 



        }
		



        else if (jrep[i] == "jardin"){

             document.getElementsById("idJardin").innerHTML +='<ul>'+ '<li>'+'<a href ="#">'+ jrep [i].tache + '</a>'+ '</li>' + '</ul>';



        }



        else if (jrep[i]== "garage"){

             document.getElementsById("idGarage").innerHTML += '<ul>'+ '<li>'+'<a href ="#">'+ jrep [i].tache + '</a>'+ '</li>' + '</ul>';

        }

        else if (jrep[i] == "autre"){

             document.getElementsById("idAutre").innerHTML += '<ul>'+ '<li>'+'<a href ="#">'+ jrep [i].tache + '</a>'+ '</li>' + '</ul>';

        }
		
		
		else if (jrep[i] == "reparation"){
			document.getElementById("idReparation").innerHTML += '<ul>'+ '<li>'+'<a href ="#">'+ jrep [i].tache + '</a>'+ '</li>' + '</ul>';
		}	
	}	
	
	let var1 = '<ul>';
	let var2 = '<ul>';
		
	for (let i in jrep){
		
		
		
	    document.getElementById("annonceur").innerHTML += var1 +'<li>'+ '<a href = ProfilPublicPrive.js>' + jrep[i].nom +'</a>'+ '</li>' + '</ul>'; 
		

    
		document.getElementById("localisationId").innerHTML += var2 = '<li>' +  jrep[i].ville + '</li>' + '</ul>';
	}





    

}



// Barre de recherche

/*

function research(){

    let xhr = newXMLHttpRequest();

    xhr.open('get', "http://localhost/serv_aff", true);

   

    xhr.onreadystatechange =

        function (){

            if (xhr.status == 200 && xhr.readyState == 4){

                rechercherT(xhr.responseText);



            }

        }

    xhr.send();



}



// à terminer



function rechercherT(motclé){

    let mC = JSON.parse(motclé);

    let trouve;

    for (i=0; i= mC.lenght; i++){

        if (document.getElementById(barrech).value == mC[i].prenom){

            // envoyer sur le profil public de la personne



        }



        if(document.getElementById(barrech).value == mC[i].nom){

            // envoyer sur le profil public de la personne

        }



        if(document.getElementById(barrech).value == mC[i].tache){

            if (mC[i].tache == )

        }

    }

}
*/
