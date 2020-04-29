var userVerification = "";
function demarrage() {
	let xhr = new XMLHttpRequest() ;
	xhr.open('get', "http://localhost/json?url=Signup-AB", true) ;
	xhr.onreadystatechange =
			function affichage() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					 userVerification = JSON.parse(xhr.responseText) ;
					}
			}
	xhr.send() ;
}


function getId(Id){
   return document.getElementById(Id).value;
}

var DataJSON="";
var tabData = {};

function getInformation(){
  if(getId("uPswd") != getId("uPswdConfirm")){
    document.getElementById("formulaire").innerHTML = "<p id='WrongPswd'>Les mots de passe ne sont pas identiques</p><a id='retry' href='page?url=SignupPage-AB'>Rééssayer</a>";
    return false;
  }
  else {
    for(let i=0; i< userVerification.length; i++){
      if(getId("uMail") == userVerification[i].mail || getId("uName") == userVerification[i].idCom){
      document.getElementById("formulaire").innerHTML = "<p id='WrongMail'>Désolé, cette adresse mail/nom d'utilisateur est déjà utilisé(e)</p><a id='retry' href='page?url=SignupPage-AB'>Rééssayer</a>";
      return false;
     }
   }
 }
  tabData = {nom : getId("LastName"), prenom : getId("FirstName"), username : getId("uName"), mail : getId("uMail"),  telephone : getId("uPhone"), adresse : getId("uVille"), anniversaire : getId("uBirth"), pswd : getId("uPswd"), pswd2 :getId("uPswdConfirm"), sexe : getId("uSex")};
  userVerification.push(tabData);
  document.querySelector("#formulaire > a").hidden = false;
  return false; //empêche le formulaire de partir;
}

function soumettreForm(){
		storeData(formulaire.LastName.value, formulaire.FirstName.value, formulaire.uName.value, formulaire.uMail.value, formulaire.uPhone.value, formulaire.uVille.value, formulaire.uBirth.value, formulaire.uPswd.value, formulaire.uSex.value);
}

function storeData(LastName, FirstName, Username, Mail, Phone, Ville, Birth, Pswd, Sex){
  let xhr = new XMLHttpRequest();
	xhr.open('get', "http://localhost/receiveData?LastName=" + LastName + "&FirstName=" + FirstName + "&Username=" + Username + "&uMail=" + Mail + "&uPhone=" + Phone + "&uVille=" + Ville + "&uBirth=" + Birth + "&uPswd=" + Pswd + "&uSex=" + Sex,  true);
	xhr.send();
}
