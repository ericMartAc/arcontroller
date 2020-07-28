<?php

class Conexion {
	public function get_conexion() {
		$servidor = "localhost";
		$db = "arcontroller";
		$port = "80";
		$charset = "utf8";
		$usuario = "root";
		$contrasena = "";
		$socket = "";
		$conexion_PDO = new PDO("mysql:host=$servidor;dbname=$db;",$usuario,$contrasena);
		return $conexion_PDO;
	}
}

?>