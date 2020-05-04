let profilConnexion ="";

function changePage(){
  let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/serv_connexion?nomUtilisateur=" + document.getElementById("nomUtilisateur").value + "&motDePasse=" + document.getElementById("motDePasse").value , true) ;
  xhr.onreadystatechange =
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					 profilConnexion = JSON.parse(xhr.responseText) ;
           if(profilConnexion.length){
              document.getElementById("blocCo").innerHTML = "<h1>Connexion Réussie!!</h1></br><a href='root?url=PageProfilPrive-CB'>Mon profil privé</a>";
            }
            else alert("Mauvais identifiants, réésayez ou inscrivez-vous");
				}
			}
  xhr.send();
  return false;
}
