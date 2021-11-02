'use strict'
var botonera = document.getElementById('b-botones');
var bcontacto = document.getElementById("b-contacto");
var binformacion = document.getElementById("b-informacion");
var img = document.getElementById("closed");
var imagen = document.getElementById('close')

//cambio de iconos para abrir la botonera del chat
document.getElementById('close').addEventListener("mouseover", () => {
    imagen.src = "imagenes/cerrarverde.svg";
});

document.getElementById('close').addEventListener("mouseout", () => {
    imagen.src = "imagenes/cerrar.svg";
});

//subir y cerrar botonera de opciones


img.addEventListener("click", () => {

    bcontacto.style.display = "block";
    binformacion.style.display = "block";
    botonera.style.top = "241px";

});

img.addEventListener("dblclick", () => {

    bcontacto.style.display = "none";
    binformacion.style.display = "none";
    botonera.style.top = "325px";

});