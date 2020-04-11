
function hazclic(){
  var elem = document.getElementsByTagName('p')[0];
  elem.addEventListener('click',recibirnumeros);
}

function recibirnumeros () {

  n = prompt("Cuantos numeros quieres introducir en total");

  A = [];

  for(i=0;i<n;i++){
    A[i] = prompt("escribe el numero");
    //alert(A[i]);
  }

}

addEventListener('load',hazclic)


function hazclic2(){
  var elem2 = document.getElementsByTagName('p')[1];
  elem2.addEventListener('click',contarnumeros);
}

function contarnumeros (){
  let ceros=0;
  let negativos=0;
  let positivos=0;
  for(i=0;i<n;i++){
    //A[i] = prompt("escribe el numero");
    if(A[i]===0){
      ceros++;
    }
    else if(A[i]<0){
      negativos++;
    }
    else{
      positivos++;
    }
  }

  alert("La cantidad de 0s es" +ceros);
  alert("La cantidad de numeros menores que 0 es " +negativos);
  alert("La cantidad de numeros mayores a 0 es " +positivos);
}

addEventListener('load',hazclic2)
