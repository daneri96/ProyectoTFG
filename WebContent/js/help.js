'use strict'

var chat = document.getElementById("chat");
var subchat = document.getElementById("subchat");
var link = document.getElementById("link");
var cerrar = document.getElementById("cerrar");
var texto = document.getElementById("texto");


link.addEventListener("click", () => {
    pintar();
});



cerrar.addEventListener("click", () => {
    subchat.style.display = "none";
    chat.style.position = "absolute";
    chat.style.top = "43em";
});

function pintar() {
    chat.style.position = "absolute";
    chat.style.top = "313px";
    subchat.style.display = "block";
    subchat.style.transition = "3000ms";
}