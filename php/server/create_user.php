<?php

require ('DBconector.php');

$con = new ConectorBD('localhost', 'nextu', '123456');
if ($con -> initConexion('basededatosAgenda') == 'OK') {
	for ($i = 1; $i <= 3; $i++) {
		$datos['nombre'] = "Usuario " . $i;
		$datos['email'] = "user" . $i . "@prueba.com";
		$datos['pass'] = password_hash("123", PASSWORD_DEFAULT);
		$datos['nacimiento'] = date('Y-m-d');
		if ($con -> insertData('Usuarios', $datos))
			echo "Se ha creado correctamente el usuario " . $i . "<br/>";
		else
			echo "Se ha producido un error en la creación del usuario" . $i . "<br/>";
	}
	$con -> cerrarConexion();
} else
	echo "Error en la conexión";

 ?>
