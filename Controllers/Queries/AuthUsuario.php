<?php
require_once ('../../Models/Queries/Class_conexion.php');
require_once ('../../Models/Queries/Class_consultas.php');
	
$mensaje = null;

if ( isset($_POST['arg_numId']) && isset($_POST['arg_psw']) ){

	$arg_numId = $_POST['arg_numId'];
	$arg_psw = $_POST['arg_psw'];
	
	$class_conexion = new Conexion();
	$conexion = $class_conexion->get_conexion();
	
	$consultas = new Consultas();
	$returnAuth = null;
	$resultado = $consultas->AuthUsuario($arg_numId,$arg_psw,$conexion,$returnAuth);

		if(isset($resultado)){
			session_start();
			$_SESSION['user'] = $resultado;
			header ("Location: ../../Views/main.php");
		}else{
			sleep(5);
			header ("Location: ../../index.html");
		}
	}
	else{
		sleep(2);
		header ("Location: ../../index.html");
	}


?>