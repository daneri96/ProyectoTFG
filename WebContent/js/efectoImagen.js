'use strict'
//funcion para cambiar la imagen 

document.getElementById('sesion').addEventListener("mouseover", () => {
    let imagen = document.getElementById('sesion');
    imagen.src = "imagenes/usuario.svg";
});

document.getElementById('sesion').addEventListener("mouseout", () => {
    let imagen = document.getElementById('sesion');
    imagen.src = "imagenes/usuario.png";
});