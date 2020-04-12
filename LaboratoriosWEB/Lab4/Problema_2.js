function hazclick() {
  var elem = document.getElementsByTagName('p')[0];
  elem.addEventListener('click', getRandom);
  elem.addEventListener('click', comenzarTiempo);
}

function getRandom() {
  var random = Date.now() % 1000;
  var random2 = Date.now() % 768;
  var suma_randoms = random + random2;
  document.write("El primer numero es " + random);

  document.write("<br> El segundo numero es " + random2 + "<br> Escribe la suma de ambos");
  var tiempoinicio=comenzarTiempo();
  //document.write(tiempoinicio);

  var cajainput = document.createElement("Input");
  cajainput.setAttribute("type", "number");
  cajainput.setAttribute("value", "Escribe la respuesta");
  document.body.appendChild(cajainput);

  var cajaenviar = document.createElement("Input");
  cajaenviar.setAttribute("type", "button");
  cajaenviar.setAttribute("value", "Enviar la respuesta");
  document.body.appendChild(cajaenviar);

  cajaenviar.addEventListener('onclick',detenerTiempo)

  document.write(caja);
  //alert(random);
  //alert(random2);
  //alert(suma_randoms);
  return suma_randoms;
}

function comenzarTiempo() {
  var tiempoInicio = Date.now();
  return tiempoInicio;
}

function detenerTiempo(tiempoInicio) {
  var y = Date.now();
  var tiempoTotal= y-tiempoInicio;
  alert (tiempoTotal/1000);
}



addEventListener('load', hazclick);




/*
function suma(){
  let resultado = prompt("Ingresa el resultado de la suma";
  return resultado;
}

*/
