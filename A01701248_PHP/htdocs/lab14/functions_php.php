<?php

include './pdo_connect.php';

function insert($pdo){

$pdo = conectBD();
$stmt = $pdo->prepare("INSERT INTO usuarios (nombre, correo, contrasena) VALUES (?, ?,?)");
$stmt->execute([$_POST['nombre'],$_POST['correo'],$_POST['contrasena']]);
$stmt = null;

}

function selectall(){
  $pdo = conectBD();
  $stmt = $pdo->prepare("SELECT nombre,correo FROM usuarios");
  $stmt->execute();
  $result = $stmt->fetchAll(PDO::FETCH_CLASS);
  if(!$result) exit('No rows');
  $stmt = null;
  return($result);
}

function mostrarConFormato(){

    $result = selectall();  

    
    if(isset($result[0]->nombre)){
		echo"<div class=\"table-responsive\">";
		echo"<table class=\"table\">
					<tr>
						<th>Nombre</th>
						<th>Correo</th>
						
					</tr>";
        foreach($result as $value){
		
        $nombre = $value->nombre;
        $correo = $value->correo;
        echo"<tr>";
        echo"<td>".$nombre."</td>";
        echo"<td>".$correo."</td>";
        echo"</tr>";
		
        }
		echo"</table>";
		echo"</div>";
    }
}




	/***********************************************************************\
	| 
	| Tabletizer Class
	| ================
	| Class for creating nice HTML table from PHP array.
	|
	| Author: malja <github.com/malja>
	| Version: 1.0
	| Created: 27. 8. 2013
	|
	| Licence: CC-BY ( http://creativecommons.org/licenses/by/3.0/ )
	| 
	| ---------------------------------------------------------------------
	|
	| Example
	| =======
	|
	| Note: For this example you need one array with name $var.
  |
	| $table = new Tabletizer();
	| echo $table->fromArray($var);
	|
	\***********************************************************************/
	
	class Tabletizer {
		
		//Content the HTML code of created table
		private $table;
	
		/**
		 * Constructor
		**/ 
		public function __constructor() {
			// Set HTML code to empty string
			$this->table = "";
		}
		
		/**
		 * Call this function to create HTML table from given PHP array
		 *
		 * array $array - Array to create HTML table from
		**/
		public function fromArray($array) {
			
			// If the first parameter is not an array
			if (!is_array($array)) {
				// Just return it
				return $array;
			}
			
			// Prepare 
			$this->table = "<table class='tabletizer'>";
				// Table title
				$this->table .= "<tr><th colspan='2'>" . gettype($array) . "</th></tr>";
				
				// Loop
				foreach ($array as $key => $value) {
					$this->table .= "<tr>";
						$this->table .= "<td>" . $key . "</td>";
						
						// If the content of $array[$key] is not an array
						if (!is_array($value)) {
							// Just insert its value
							$this->table .= "<td>" . $value . "</td>";
						} else {
							// Parse array -> create new inner table
							$this->table .= $this->parseTable($value);
						}
					
					// End one line
					$this->table .= "</tr>";
				}
			
			// End table
			$this->table .= "</table>";
			//Return the final HTML table code
			return $this->table;
		}
		
		/**
		 * Private function which takes one parameter and returns HTML code of array.
		 *
		 * array $array - Array to generate HTML table code from
		**/
		private function parseTable($array) {
			// If the given array is not an array in fact
			if (!is_array($array)) {
				// Return value
				return $array;
			}
			
			// Get all keys of this array
			$keys = array_keys($array);
			
			// Just suppose that this array is indexed (every key is a number)
			$indexed_array = true;
			
			// Loop
			for($i = 0; $i != count($keys)-1; $i++) {
			
				// If the key is not a number
				if (!is_numeric($keys[$i])) {
					// It's not a indexed but associative array
					$indexed_array = false;
					// End loop, we don't have to check the rest
					break;
				}
			}
			
			// Prepare
			$innerTable = "<td><table>";
			$innerTable .= "<tr><th colspan='2'>" . gettype($array) . "(" . ($indexed_array ? "Indexed" : "Associative") . ")</th></tr>";
				// Loop
				foreach ($array as $key => $value) {
					$innerTable .= "<tr>";
						// Add key content
						$innerTable .= "<td>" . $key . "</td>";
						
						// If the value of $array[$key] is not an array
						if (!is_array($value)) {
							// Just add its value
							$innerTable .= "<td>" . $value . "</td>";
						} else {
							// Call this function itself to parse array
							$innerTable .= $this->parseTable($value);
						}
						
					// End one line
					$innerTable  .= "</tr>";
				}
			
			// End table
			$innerTable .= "</table></td>";
			
			// Return the final table
			return $innerTable;
			
		} // function parseTable()
	} // class Tabletizer


function search(){
	$pdo = conectBD();
	$search = "%{$_POST['search']}%";
	$stmt = $pdo->prepare("SELECT nombre,correo FROM usuarios WHERE nombre LIKE ?");
	$stmt->execute([$search]);
	$result = $stmt->fetchAll(PDO::FETCH_CLASS);
	if(!$result) exit('No rows');
	$stmt = null;
	return($result);
}

function mostrarBusquedaConFormato(){

    $result = search();  

    
    if(isset($result[0]->nombre)){
		
		echo"<div class=\"table-responsive\">";
		echo"<table class=\"table\">
					<tr>
						<th>Nombre</th>
						<th>Correo</th>
						
					</tr>";
        foreach($result as $value){
		
        $nombre = $value->nombre;
        $correo = $value->correo;
        echo"<tr>";
        echo"<td>".$nombre."</td>";
        echo"<td>".$correo."</td>";
        echo"</tr>";
		
        }
		echo"</table>";
		echo"</div>";
    }else{
	echo"Ningun elemento coincide con tu busqueda";
	}
}





?>