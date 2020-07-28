<?php
require_once ('Class_conexion.php');
	class Consultas{
		public function AuthUsuario($arg_numId, $arg_psw,$conexion,$returnAuth)
		{
			$sql = "SELECT * FROM personas WHERE noIdentPersona = :noIdentPersona AND psw_persona = :psw_persona";
			$statement = $conexion->prepare($sql);
			$statement->bindParam(':noIdentPersona',$arg_numId);
			$statement->bindParam(':psw_persona', $arg_psw);
			$statement->execute();
			if ($result = $statement->fetch()) {
				$returnAuth = $result;
			}
			$statement=null;
			return $returnAuth;
		}
		public function InsertarUsuario($arg_nombre,$arg_apodo,$arg_perfilLaboral,$arg_pais,$arg_fechaNatal,$arg_fechaHoy,$arg_correo,$arg_tipoId,$arg_numId,$arg_telefono,$arg_sexo,$arg_psw,$arg_psw2,$arg_resp1,$arg_resp2)
		{
			$modelConn = new Conexion();
			$conexion = $modelConn->get_conexion();
			$sql = "INSERT INTO rousse_db.usuario_roussedb(nombre, apodo, perfilLaboral, pais, fechaNatal, fechaHoy, correo, tipoId, numId, telefono, sexo, psw, psw2, resp1, resp2) VALUES (:nombre, :apodo, :perfilLaboral, :pais, :fechaNatal, :fechaHoy, :correo, :tipoId, :numId, :telefono, :sexo, :psw, :psw2, :resp1, :resp2)";
			$statement = $conexion->prepare($sql);
			$statement->bindParam(':nombre',$arg_nombre);
			$statement->bindParam(':apodo',$arg_apodo);
			$statement->bindParam(':perfilLaboral',$arg_perfilLaboral);
			$statement->bindParam(':pais',$pais);
			$statement->bindParam(':fechaNatal',$arg_fechaNatal);
			$statement->bindParam(':fechaHoy',$arg_fechaHoy);
			$statement->bindParam(':correo',$arg_correo);
			$statement->bindParam(':tipoId',$arg_tipoId);
			$statement->bindParam(':numId',$arg_numId);
			$statement->bindParam(':telefono',$arg_telefono);
			$statement->bindParam(':sexo',$arg_sexo);
			$statement->bindParam(':psw',$arg_psw);
			$statement->bindParam(':psw2',$arg_psw2);
			$statement->bindParam(':resp1',$arg_resp1);
			$statement->bindParam(':resp2',$arg_resp2);
			if (!$statement) {
				# code...
				return "Error en consultar";
			}else{
				$statement->execute();
				return "Datos ingresados correctamente";
			}
		}
		public function CargarUsuario($arg_numId)
		{
			# code...
			$rows = true;
			$modelConn = new Conexion();
			$conexion = $modelConn->get_conexion();
			$sql = "SELECT * FROM usuario_roussedb";
			$statement = $conexion->prepare($sql);
			$statement->execute();
			if ($result = $statement->fetch()) {
				# code...
				$rows = true;
			}else{
				$rows = false;
			}
			return $rows;
		}
		public function CerrarSesion()
		{
			session_start();
			session_destroy();
			header ("Location: ../../Views/index.php");
		}
	}
?>