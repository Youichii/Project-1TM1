"use strict";

// auteur : étudiant 1 nom prénom matricule

// TODO : Manque JSDOC


/* ****************************** */

function appelEffacer() {
    let xhr = new XMLHttpRequest();

    // pourrait être fonctionnalisé pour être réutilisé
    let service = window.location.protocol +'//' + window.location.host + '/effacer';
    let user = USER_FIELD.value;
    let code = CODE_FIELD.value === '' ? 'no' : CODE_FIELD.value;

    xhr.open('get', `${service}?u=${user}&s=${code}`, true);
    xhr.onload = callbackAppelEffacer;
    xhr.onerror = function () {afficherMessage('appelEffacer, error :' + xhr.error);};
    xhr.send();
}

function callbackAppelEffacer() {
    let reponse = JSON.parse(this.responseText);

    if (reponse[0].status === 'error') {
        afficherMessage((new Date()).toLocaleTimeString() + " : " + reponse[0].message);
    }
    else
    {
        appelRafraichir(); // on affiche le changement
    }
}


/* ****************************** */



