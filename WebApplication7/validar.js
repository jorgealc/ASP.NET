var nombre;
var email;
var boton;
window.onload = function(e){
    console.log('Document Loaded:validar.js');


    boton = document.getElementById('btnsubmit');
    nombre = document.getElementById('usuario_id');
   
    email = document.getElementById('usuario_email');
   
    registrarListener();

}
function validar() {
    if (nombre.value == "") {
        boton.disabled = true;
        return;
    }
    else {
        boton.disabled = false;
    }
    if (email.value == "") {
        boton.disabled = true;
        return;
    }
    else {
        boton.disabled = false;
    }



}
   
    

    function registrarListener() {
        console.log('registrarListener');
        nombre.addEventListener("blur", validar);
        email.addEventListener("blur", validar);

    }


    