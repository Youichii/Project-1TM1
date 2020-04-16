
let profils = [
    ["Martin", "Thomas","H",[["Jardinage",14],["Ménage",20]],"Ittre","+123456789",8],
    ["Natacha", "Cali","F", [["Chien",10],["Jardinage",14]], "Nivelles","+123456789",6],
    ["Margau", "Guette","F",[ "Ménage",17], "Louvain","+123456789",8],
    ["Tom", "Mato","H",["Chien",16], "Nivelles","+123456789",6],
    ["Coralie", "Waroquez","F",["Jardinage",20],"Ittre","+123456789",10],
    ];

let tache


// -----------------------------  page de profil personnel ---------------------------\\


function initBis(){
    
    
    document.getElementById("info").innerHTML += "<a href='" + profils[1][1] +"@exemple.com' id='lienbis'>Mail</a><br><a href= tel:"+profils[1][5]+"id='lienbis'>Telephone</a><br><a href='Pagedeannonce.html' id='lienbis'>Accéder aux annonces de cet utilisateur</a>";
    // mettre les liens des photos dans le tableau ? ou attribution d'un avantar par défault en fonction du sex introduit? ou chois d'image parmis une bande de donné 
    document.getElementById("page2").innerHTML= profils[1][0] + " " + profils[1][1] 
    /*if(profils[1][2] === "M"){
        document.getElementById("mon_image").src = url("../img/milou.jpg");
        return false;
       
    }
    else{
        document.getElementById("mon_image").src = ("../img/milou.jpg");
        
        return false;
    }*/


//document.getElementById("mon_image").src = "poney.jpg"
    
 
}

function note(){
    let note= +prompt("Veuillez insérer une note sur 10.")
    if(note <= 10){
        profils[1][6] =  (profils[1][6]+ note) / 2
        document.getElementById("note").innerHTML = profils[1][6] + "/10";
        console.log(profils[1][7])
        return false; 
    }

    else{
        alert("Entrée non valide")
        note= +prompt("Veuillez insérer une note sur 10.")
    }

    
  // document.getElementById('Noter').disabled = false; // true pour l'activer ne fonctionne pas // trouver une fonction pour que l'on puisse ne vauter qu'une fois



}


function commentaires(){
    let com = document.getElementById("comm").value 
    
    if(document.getElementById('radE').checked){
		var valeur = document.getElementById('radE').value;
    } 
    
    else { 
		var valeur = document.getElementById('radR').value;
    }
    
    let nom = document.getElementById("utilisateur").value

    if(nom == ""){
        alert("Veuillez introduire un nom d'utilisateur")
    }
    console.log(com + valeur + nom);
    
   document.getElementById("zonecomm").innerHTML += "- Son " + valeur + " " + nom + " a dit : "  + com  + "<br>"
   return false; 

}



// -----------------------------  page des annonces de la personne ---------------------------\\

/*let profils = [
    ["Martin", "Thomas","H",[["Jardinage",14],["Ménage",20]],"Ittre","+123456789",8],
    ["Natacha", "Cali","F", [["Chien",10],["Jardinage",14]], "Nivelles","+123456789",6],
    ["Margau", "Guette","F",[ "Ménage",17], "Louvain","+123456789",8],
    ["Tom", "Mato","H",["Chien",16], "Nivelles","+123456789",6],
    ["Coralie", "Waroquez","F",["Jardinage",20],"Ittre","+123456789",10],
    ];*/

function init() {
 
    document.getElementById("NomComplet").innerHTML= profils[1][0] + " " + profils[1][1];
    document.getElementById("info").innerHTML = "Pseudo   <input type='button' onclick='' value='Changer Pseudo' class='boutton'><br>Ville   <input type='button' onclick='' value='Changer Ville' class='boutton'><br>Anniversaire   <input type='button' onclick='' value='Changer Anniversaire' class='boutton'><br>Adresse Mail   <input type='button' onclick='' value='Changer Adresse Mail' class='boutton'><br>Mot de passe   <input type='button' onclick='' value='Changer le mot de passe' class='boutton'><br>Numéro de gsm   <input type='button' onclick='' value='Changer N° de telephone' class='boutton'><br>";


}


