<?php


function abrirBD(){

    $servername = "localhost";
    $username = "root";
    $password = "";
    $bd = "examenjurasicpark";

    $connect = mysqli_connect($servername, $username, $password, $bd);

    if (!$connect) {
        echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
        die();
    }
    //echo("conected");
    return $connect;
}


function cerrarBD($con){
    mysqli_close($con);
} 


?>