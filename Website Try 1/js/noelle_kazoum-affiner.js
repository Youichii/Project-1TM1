"use strict";
// auteur : Noelle Kazoum matricule

/* ****************************** */

// AFFICHER LES TACHES ET LES  INFORMATIONS
// Prendre les informations de la base de donnée et les metre dans le HTML dans un certain ordre

function affichageTache(){
    let xhr = new newXMLHttpRequest();
    xhr.open('get', "http://localhost/serv_donnees", true);
    xhr.onreadystatechange =
        function (){
            if (xhr.status == 200 && xhr.readyState == 4){
                description_tache(xhr.responseText)
            }
        }
    xhr.send();
}


function description_tache(info){
    data = JSON.parse(info);
    let nom_, prenom_, email_, tel_, tache_, descri_, ville_;
    for (data[0].tache){
        document.getElementById("idName").innerHTML = data [0].nom ;
        document.getElementById("iidPren").innerHTML = data[0].prenom;
        document.getElementById("idEmail").innerHTML = data[0].email;
        document.getElementById("idVille").innerHTML =data[0].ville ;
    }



}



//AJOUTER UNE TACHE
// Partir du script, afficher dans le HTML et sauvegarder ensuite dans la base de donnée

function AjouterUneNouvelleTache(){
    let xhr = new XMLHttpRequest();
    xhr.open('get', "hettp://localhost/serv_donnees")
}



function addTask(t){
    let nouvelleTache;
    if (t.a_tache.checked == "maison"){
        nouvelleTache = document.getElementsById("maison").value;
    }

    if (t.a_tache.checked == "jardin"){
        nouvelleTache = document.getElementsById("jardin").value;
    }

    if (t.a_tache.checked == "garage"){
        nouvelleTache = document.getElementsById("garage").value;
    }

    if (t.a_tache.checked == "autre"){
        nouvelleTache = document.getElementsById("autre").value;
    }



    let xhr = new XMLHttpRequest;
    xhr.open('get', "http://localhost/serv_ajouerTask?task_="+nouvelleTache+"&personne_="+data[0].idCom+"desc_"+data[0].details+"&cat_"+data[0].categorie, true);
    xhr.send();
}

//AFFINER LES TACHES
// Prendre les taches existantes à partir de la base de donnée et les trier dans le HTML


function affinerTache(){
    let xhr = newXMLHttpRequest();
    xhr.open('get', "http://localhost/serv_aff", true);
    // je dois chercher la categorie dans la table tache)
    xhr.onreadystatechange =
        function (){
            if (xhr.status == 200 && xhr.readyState == 4){
                affiner(xhr.responseText);

            }
        }
    xhr.send();


}



function affiner(txt){

    let jrep = JSON.parse(txt);
    let dom

    for(let i = 0; i =jrep.length; i++){
        if (jrep [i][categorie] == "maison"){
            dom = document.getElementsById("idMaison").innerHTML += jrep [i].tache; // += à voir

        }

        if (jrep[i][categorie]== "jardin"){
            dom = document.getElementsById("idJardin").innerHTML += jrep[i].tache;

        }

        if (jrep[i][categorie]== "garage"{
            dom = document.getElementsById("idGarage").innerHTML += jrep[i].tache;
        }
        else {
            dom = document.getElementsById("idAutre").innerHTML += jrep[i].tache;
        }
    }


    return dom;
}

// Barre de recherche

function research(){
    let xhr = newXMLHttpRequest();
    xhr.open('get', "http://localhost/serv_aff", true);
    // je dois chercher la categorie dans la table tache)
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
