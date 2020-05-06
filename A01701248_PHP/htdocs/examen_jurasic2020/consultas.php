
<?php
require("conexion.php");


function mostrarPrueba(){

$conBD = abrirBD();

$sql = "SELECT id_lugar, id_incidente, fecha FROM historico ORDER BY fecha";
$result = $conBD->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id_lugar: " . $row["id_lugar"]. " - id_incidente: " . $row["id_incidente"]. "fecha " . $row["fecha"]. "<br>";
    }
} else {
    echo "0 results";
}

}

function mostrarIncidente(){

    $conBD=abrirBD();
    
    $sql = "SELECT L.nombre, I.nombre, H.fecha 
        FROM lugaresincidente as L, tipoincidente as I,historico as H 
        WHERE L.id=H.id_lugar AND I.id=H.id_incidente
        ORDER BY fecha";
    $result = $conBD->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "nombreLugar: " . $row["nombre"]. " - nombreIncidente: " . $row["nombre"]. "Fecha " . $row["fecha"]. "<br>";
         
    }
    } else {
    echo "0 results";
    }
    
}

function mostrarIncidenteStored(){
    $conBD=abrirBD();
    
    $sql = "CALL mostrarTodo()";
    $result = $conBD->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "nombreLugar: " . $row["nombre"]. " - nombreIncidente: " . $row["nombre"]. "Fecha " . $row["fecha"]. "<br>";
         
    }
    } else {
    echo "0 results";
    }
}

function insertarIncidente($id_incidente,$id_lugar){

    $conBD=abrirBD();
    
    $sql = "CALL instertarIncidente(?,?)";
    $result = $conBD->query($sql);

    
    
}

?>