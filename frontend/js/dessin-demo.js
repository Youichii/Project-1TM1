"use strict";

// TODO : Manque JSDOC


/* ***** GLOBAL ***** */
let caseSelectionnee = null;
let dessin = [];
let COLOR_PICKER;


/* ***** utilisateur / codeSecret ***** */
const UNKNOWN_USER = 'inconnu';
const UNKNOWN_CODE = '';
let USER_FIELD; // pas en const car pas encore possible de faire le lien
let CODE_FIELD;


/* ***** Init ***** */
document.addEventListener('DOMContentLoaded', initialiserPage);

function initialiserPage() {
    COLOR_PICKER = document.getElementById("couleur");

    USER_FIELD = document.getElementById('name');
    CODE_FIELD = document.getElementById('pass');
	
	// utilise le local storage pour stocker localement dans le navigateurs des informations
	// ainsi l'utilisateur ne doit pas les réencoder s'il rouvre le site plus tard avec le même navigateur
    USER_FIELD.value = window.localStorage.getItem('user') ? window.localStorage.getItem('user') : UNKNOWN_USER;
    CODE_FIELD.value = window.localStorage.getItem('code') ? window.localStorage.getItem('code') : UNKNOWN_CODE;

    USER_FIELD.addEventListener('change', function() {window.localStorage.setItem('user', USER_FIELD.value)});
    CODE_FIELD.addEventListener('change', function() {window.localStorage.setItem('code', CODE_FIELD.value)});


    document.getElementById('codeVisible').addEventListener('click', function() {CODE_FIELD.type = this.checked ? 'text' : 'password'});

    document.querySelector("#boutonRafraichir").addEventListener('click', appelRafraichir);
    document.querySelector("#boutonEffacer").addEventListener('click', appelEffacer);

    appelRafraichir();

    // rafraichir toutes les 10 secondes // voir setTimeOut // proposer case pour l'activer ou non
    // imaginer appel qui ne renvoie pas tout si pas de changement
	// nécessaire d'interroger le serveur régulièrement car pas de connexion du serveur vers le client -> possible avec websocket par exemple
    setInterval(appelRafraichir, 10000);
}


/* ***** cliquer case ***** */

function selectionnerCase() {
    console.log("case " + this.id + " sélectionnée");

    // désélectionne toute case sélectionnée
    for (let element of document.querySelectorAll(".caseSelectionnee")) {
        element.classList.remove("caseSelectionnee");
    }

    // retient et affiche la nouvelle case sélectionnée
    caseSelectionnee = this.id;
    document.getElementById(this.id).classList.add("caseSelectionnee");


}


/* ****************************** */

function dessiner() {
    let taille = Math.sqrt(dessin.length);

    if (! Number.isInteger(taille)) {
        afficherMessage("Erreur : taille du dessin");
        return;                                            // sort de la fonction
    }

    let rows = '';

    for (let i = 0; i < taille; i++) {
        rows += "<tr>";
        for (let j = 0; j < taille; j++) {
            let num = (i * taille) + j;
            rows += '<td' + ' ' + 'id="' + dessin[num].i + '" ' + '>' + '</td>';
        }
        rows += "</tr>";
    }
    document.getElementById("dessin").innerHTML = rows;
    for (let td of document.querySelectorAll("#dessin td")) {
        td.addEventListener('click', appelColorier);
    }
}


/* ****************************** */

function afficherMessage(message) {
    document.getElementById('affichage').innerHTML = message;
}


