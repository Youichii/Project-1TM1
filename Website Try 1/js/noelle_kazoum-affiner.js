"use strict";
// auteur : Noelle Kazoum matricule

/* ****************************** */

function afiinerTache(){
  let xhr = newXMLHttpRequest();
     xhr.open('get', "http://localhost/json", true);
      // je dois chercher la categorie dans la table tache)
      xhr.onreadystatechange =
                        function affichage(){
                          if (xhr.status == 200 && xhr.readyState == 4){
                            document.getElementsById("").innerHTML = affiner(xhr.responseText);
                          }
                        }
xhr.send();
}

function affiner(txt){
  let response = JSON.parse(txt);
  let dom ;
  for(let i = 0; i =response.length; i++){
    if (response [i][categorie] = "maison"){
      dom = document.getElementsById("idMaison").innerHTML += response [i][tache];
    }

    if (response[i][categorie]= "jardin"){
      dom = document.getElementsById("idJardin").innerHTML += response[i][tache];
    }

    if (response[i][categorie]= "garage"{
      dom = document.getElementsById("idGarage").innerHTML += response[i][tache];
    })
  }

  else {
    dom = document.getElementsById("idAutre").innerHTML += response[i][tache];
  }
}

return dom;
