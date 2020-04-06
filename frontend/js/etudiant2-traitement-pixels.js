"use strict";


// auteur : étudiant 1 nom prénom matricule

// TODO : Manque JSDOC


/* ********************************* */

function appelRafraichir() {
    let xhr = new XMLHttpRequest();
    xhr.open('get', window.location.protocol +'//' + window.location.host + '/pixels', true);
    xhr.onload = callbackAppelRafraichir;
    xhr.onerror = function () {afficherMessage('appelRafraichir, error :' + xhr.error);};
    xhr.send();
}

function callbackAppelRafraichir() {
    dessin = JSON.parse(this.responseText);
    rafraichir(); // pourquoi pas envoyer dessin par paramètre ?
}

function rafraichir() {

    let taille = Math.sqrt(dessin.length);

    for (let pixel of dessin) {
        let td = document.getElementById(pixel.i);

        if (! td) {       // Si l'id n'existe pas, c'est que le dessin actuel ne correspond plus !
            dessiner();
            rafraichir();
            break;
        }

        td.style.backgroundColor = pixel.c;
        td.title = pixel.u + " - " + pixel.t;
    }

    afficherMessage((new Date()).toLocaleTimeString() + ' : Dessin rafraichi');
}

/* ****************************** */

