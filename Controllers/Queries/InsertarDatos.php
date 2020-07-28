<?php
require_once ('../../Models/Class_conexion.php');
require_once ('../../Models/Class_consultas.php');
	
$mensaje = null;

if (count($_POST['arg_nombre']) > 0 && count($_POST['arg_apodo']) > 0 && count($_POST['arg_perfilLaboral']) > 0 && count($_POST['arg_pais']) > 0 && count($_POST['arg_fechaNatal']) > 0 && count($_POST['arg_correo']) > 0 && count($_POST['arg_tipoId']) > 0 && count($_POST['arg_numId']) > 0 && count($_POST['arg_telefono']) > 0 && count($_POST['arg_sexo']) > 0 && count($_POST['arg_psw']) > 0 && count($_POST['arg_psw2']) > 0 && count($_POST['arg_resp1']) > 0 && count($_POST['arg_resp2']) > 0 )
 {
	# code...

	$arg_nombre = $_POST['arg_nombre'];
	$arg_apodo = $_POST['arg_apodo'];
	$arg_perfilLaboral = $_POST['arg_perfilLaboral'];
	$arg_pais = $_POST['arg_pais'];
	$arg_fechaNatal = $_POST['arg_fechaNatal'];
	$arg_fechaHoy = date("d-m-Y (H:i:s)");
	$arg_correo = $_POST['arg_correo'];
	$arg_tipoId = $_POST['arg_tipoId'];
	$arg_numId = $_POST['arg_numId'];
	$arg_telefono = $_POST['arg_telefono'];
	$arg_sexo = $_POST['arg_sexo'];
	$arg_psw = $_POST['arg_psw'];
	$arg_psw2 = $_POST['arg_psw2'];
	$arg_resp1 = $_POST['arg_resp1'];
	$arg_resp2 = $_POST['arg_resp2'];

	$consultas = new Consultas();
	$mensaje = $consultas->InsertarUsuario($arg_nombre,$arg_apodo,$arg_perfilLaboral,$arg_pais,$arg_fechaNatal,$arg_fechaHoy,$arg_correo,$arg_tipoId,$arg_numId,$arg_telefono,$arg_sexo,$arg_psw,$arg_psw2,$arg_resp1,$arg_resp2);
	echo $mensaje;

}else{
	echo "Debe diligenciar todos los valores";
}


	
?>