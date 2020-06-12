<?php
include'./functions_php.php';
// define variables and set to empty values
$nameErr = $emailErr  = $websiteErr = "";
$name = $email = $tel = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {


  if (empty($_POST["name"])) {
    $nameErr = "Escribe un nombre ";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
      $nameErr = "Solo letras y espacios en blancos admitidos";
    }
  }

  if (empty($_POST["email"])) {
    $emailErr = "Un correo es requerido";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Formato de correo invalido";
    }
  }


}

if($nameErr == "" AND $emailErr == ""){
    if(isset($_POST["name"]) AND isset($_POST["email"])){
    insert();
    echo "<p>Registro exitoso</p>";
    }

}



function test_input($data)
{
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
