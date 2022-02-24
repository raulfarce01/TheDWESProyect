//Función para hacer que el input de correo y nombre sea editable, para que, en principio solo pueda mostrar sin editar
function cambiaDato() {

    let user = document.getElementById("usuario");
    let correo = document.getElementById("correo");

    user.removeAttribute("readonly");
    correo.removeAttribute("readonly");

}

//Función para devolver al input a su estado de solo lectura, para que solo pueda ser modificado cuando se pulse el botón
function vuelveNormal() {

    let user = document.getElementById("usuario");
    let correo = document.getElementById("correo");

    user.setAttribute("readonly", "true");
    correo.setAttribute("readonly", "true");

}