'use strict'





//validación del email

document.getElementById("inputEmail").addEventListener("keydown", () => {

    let regxEmail = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    let email = document.getElementById("inputEmail").value;
    let input = document.getElementById("inputEmail");

    if (regxEmail.test(email)) {
        input.style.borderColor = "green";

    } else {
        input.style.borderColor = "red";
    }

    if (email === "") {
        input.style.borderColor = "gray";
    }

});


//validación nombre

document.getElementById("inputName").addEventListener("keydown", () => {

    let regxNombre = /^([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)+$/;
    let nombre = document.getElementById("inputName").value;
    let input = document.getElementById("inputName");

    if (regxNombre.test(nombre)) {

        input.style.borderColor = "green";

    } else {
        input.style.borderColor = "red";

    }

    if (nombre === "") {
        input.style.borderColor = "gray";
    }
});

//validación apellidos

document.getElementById("inputSurname").addEventListener("keydown", () => {
    let regxApellido = /^([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)+$/;
    let apellido = document.getElementById("inputSurname").value;
    let input = document.getElementById("inputSurname");

    if (regxApellido.test(apellido)) {

        input.style.borderColor = "green";
    } else {
        input.style.borderColor = "red";
    }

    if (apellido === "") {
        input.style.borderColor = "gray";
    }
});




//validación de direccion

document.getElementById("inputAdress").addEventListener("keydown", () => {
    let regxDireccion = /[a-zA-z0-9]/;
    let direccion = document.getElementById("inputAdress").value;
    let input = document.getElementById("inputAdress");

    if (direccion != "") {
        input.style.borderColor = "green";
    } else {
        input.style.borderColor = "red";
    }

    if (direccion === "") {
        input.style.borderColor = "gray";
    }
});


//validación de contraseñas
//La contraseña debe tener al entre 6 y 12 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.

document.getElementById("inputPassword").addEventListener("keydown", () => {
    let regxPassword = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{6,12}$/;
    let pass = document.getElementById("inputPassword").value;
    let input = document.getElementById("inputPassword");

    if (regxPassword.test(pass)) {
        input.style.borderColor = "green";
    } else {
        input.style.borderColor = "red";
    }

    if (pass === "") {
        input.style.borderColor = "gray";
    }
});

document.getElementById("inputRepitPassword").addEventListener("keydown", () => {
    let regxPassword = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{6,12}$/;
    let pass = document.getElementById("inputRepitPassword").value;
    let input = document.getElementById("inputRepitPassword");

    if (regxPassword.test(pass)) {
        input.style.borderColor = "green";
    } else {
        input.style.borderColor = "red";
    }

    if (pass === "") {
        input.style.borderColor = "gray";
    }
});