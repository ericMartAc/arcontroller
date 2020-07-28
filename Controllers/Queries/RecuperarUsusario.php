<?php
require_once ('../../Models/Class_conexion.php');
require_once ('../../Models/Class_consultas.php');
	
$mensaje = null;

if ( isset($_POST['arg_numId']) && isset($_POST['arg_email'])  ){

	$arg_numId = $_POST['arg_numId'];
	$arg_email = $_POST['arg_email'];
	
	$class_conexion = new Conexion();
	$conexion = $class_conexion->get_conexion();
	
	$consultas = new Consultas();
	$returnUsuarioRecuperado = null;
	$resultado = $consultas->AuthUsuario($arg_numId,$arg_email,$conexion,$returnUsuarioRecuperado);

		if(isset($resultado)){
			session_start();
			$_SESSION['user'] = $resultado;
			#@session_start(); session_destroy(); header("Location: index.php");
			header ("Location: ../../Views/home/main.php");
		}else{
			header ("Location: ../../index.html");
		}

	}else{
		header ("Location: ../../index.html");
	}


?>