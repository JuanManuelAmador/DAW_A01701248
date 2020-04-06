function hazclick(){
  var elem = document.getElementsByTagName('p')[0];
  elem.addEventListener('click',getRandom);
}

function getRandom() {
  let random= 9
  alert(random);
}

addEventListener('load',hazclick);

/*
function suma(){
  let resultado = prompt("Ingresa el resultado de la suma";
  return resultado;
}

*/
