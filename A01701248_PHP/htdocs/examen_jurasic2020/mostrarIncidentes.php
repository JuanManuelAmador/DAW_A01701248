<?php



$sql = "SELECT L.nombre, I.nombre, H.fecha 
        FROM lugaresincidente as L, tipoincidente as I,historico as H 
        WHERE L.id=H.id_lugar AND I.id=H.id_incidente
        ORDER BY fecha";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "nombreLugar: " . $row["L.nombre"]. " - id_incidente: " . $row["I.nombre"]. "fecha " . $row["H.fecha"]. "<br>";
        var_dump($result); 
    }
} else {
    echo "0 results";
}
$conn->close();

?>
