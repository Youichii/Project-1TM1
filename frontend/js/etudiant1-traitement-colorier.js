"use strict";

// auteur : étudiant 1 nom prénom matricule

// TODO : Manque JSDOC


/* ****************************** */

function appelColorier() {
	
    let xhr = new XMLHttpRequest();

    //let service= window.location.protocol +'//' + window.location.host + '/colorier';
    let service= 'colorier';
    let pixel = this.id;
    let color = COLOR_PICKER.value.replace("#", "%23");
    let user = USER_FIELD.value;
    let code = CODE_FIELD.value === '' ? 'no' : CODE_FIELD.value;

    //xhr.open('get', `${service}?p=${pixel}&c=${color}&u=${user}&s=${code}`, true);
    xhr.open('get', service + "?p=" + pixel + '&c=' + color + '&u=' + user + '&s=' + code, true);

    xhr.onload = callbackAppelColorier;

    xhr.onerror = function () {
        afficherMessage('appelChangerCouleur, error :' + xhr.error);
    };

    xhr.send();

}

function callbackAppelColorier() {
    let reponse = JSON.parse(this.responseText);

    if (reponse[0].status === 'error') {
        afficherMessage((new Date()).toLocaleTimeString() + " : " + reponse[0].message);
    }
    else
    {
        appelRafraichir(); // on affiche le changement
    }

}
