function guardar_contraseña() {
  /*
  //Otra forma de obtener el value del input
  contraseña_usuario = document.getElementById("caja_textoContraseña").value;
  alert(contraseña_usuario);
  */

  caja = document.getElementById("caja_textoContraseña");
  contraseña_usuario = caja.value;
  /*
  //Comprobacion de que se guardo en el string la contraseña que se escribio en la caja de texto
  alert (contraseña_usuario);
  alert (contraseña_usuario[0]);
  alert(contraseña_usuario.length);
  */
}

function validar_contraseña() {
  let nivelSeguridad = 0;
  let minus = validar_minusculasContraseña();
  let mayus = validar_mayusculasContraseña();
  let size = validar_sizeContraseña();


  //alert("minus" +minus+"mayus" + mayus+ "size" + size);
  if (minus) {
    nivelSeguridad++;
  }
  if (mayus) {
    nivelSeguridad++;
  }
  if (size > 8) {
    nivelSeguridad++;
  }
  if (size > 32) {
    nivelSeguridad++;
  }
  if (size > 128) {
    nivelSeguridad++
  }

  //Alert nivelSeguridad
  console.log(nivelSeguridad);
}


function validar_minusculasContraseña() {
  var numMinus = (contraseña_usuario.match(/[a-z]/g) || []).length;
  return (numMinus);
}

function validar_mayusculasContraseña() {
  var numUpper = (contraseña_usuario.match(/[A-Z]/g) || []).length;
  return (numUpper);
}

function validar_sizeContraseña() {
  var sizeContraseña = contraseña_usuario.length;
  return (sizeContraseña);
}



/*

    at least n characters
    combination of upper- and lower-case characters(*)
    one or more digits(*)
    not related to other user data (name, address, username, ...)
    not a dictionary word
*/

//Funciones de estilos
//No se por que si la insercion del script esta al final no carga el parrafo hasta el load
addEventListener('load', obtenerParrafo);
//Se agrega el evento click al parrafo, si se da click se dispara el cambio de estilo
function obtenerParrafo() {
  addEventListener('click', cambiarEstilo);
}
//Cuando se dispara cambia el estilo del parrafo
function cambiarEstilo() {
  var elem = document.getElementById("sorpresa").style.fontStyle = "italic";
}

function prueba (){
  var myStart = document.getElementById("sorpresa");
  myStart.addEventListener('mouseover', function(event) {
  alert("hola");
  

  }, false);
}

function parrafoNormal(x) {
  x.style.color = "black";
}

function resaltarParrafo(x) {
  x.style.color = "blue";
}



