<?php
require_once ('../../Models/Class_conexion.php');
require_once ('../../Models/Class_consultas.php');
	

	$consultas = new Consultas();
	$result = $consultas->CerrarSesion();
	if($result){
		header ("Location: ../../Views/index.php");
	}else{
		echo "no se pudo cerrar sesion";
	}

?>






