function hazclick(){
  var elem = document.getElementsByTagName('p')[0];
  elem.addEventListener('click',getRandom);
}

function hazclick2(){
  var elem = document.getElementsByTagName('p')[1];
  elem.addEventListener('click',getRandom);
}


function getRandom() {
  var random= Date.now() % 1000;
  alert(random);
}

addEventListener('load',hazclick);
addEventListener('load',hazclick2);



/*
function suma(){
  let resultado = prompt("Ingresa el resultado de la suma";
  return resultado;
}

*/
