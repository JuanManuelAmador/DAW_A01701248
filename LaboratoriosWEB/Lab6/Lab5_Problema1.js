function guardar_contraseña () {
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

function validar_contraseña(){
  let minus = validar_minusculasContraseña();
  let mayus = validar_mayusculasContraseña();
  let size = validar_sizeContraseña();

  //alert("minus" +minus+"mayus" + mayus+ "size" + size);
}

function validar_minusculasContraseña(){
  var numMinus = (contraseña_usuario.match(/[a-z]/g) || []).length;
  return(numMinus);
}

function validar_mayusculasContraseña(){
  var numUpper = (contraseña_usuario.match(/[A-Z]/g) || []).length;
  return(numUpper);
}

function validar_sizeContraseña(){
  var sizeContraseña = contraseña_usuario.length;
  return(sizeContraseña);
}



/*

    at least n characters
    combination of upper- and lower-case characters(*)
    one or more digits(*)
    not related to other user data (name, address, username, ...)
    not a dictionary word
*/
