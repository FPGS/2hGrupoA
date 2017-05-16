<?php
session_start();
// Recuperar datos del formulario
$dni=$_POST['usuario'];
$cla=$_POST['password'];

include("conexion.php");

//Localizar el dni en la tabla usuarios
$sql="SELECT dni FROM usuarios WHERE dni='$dni'";

$registros=mysqli_query($conexion,$sql);
$total=mysqli_num_rows($registros);
if($total==0)
{
	echo "<H2>USUARIO NO EXISTE </H2>Pulse <a href='index.php'>aquí</a> para continuar.";
}
else
{
	while($linea=mysqli_fetch_array($registros))
	{
		if($linea['clave']=$cla)
		{
			$_SESSION['dni']=$linea['dni'];
			$_SESSION['nombreusuario']=$linea['nombre'];
			header("location:interior/index.php");		}
		else
		{
			echo "<H2>CLAVE INCORRECTA </H2>Pulse <a href='index.php'>aquí</a> para continuar.";
		}

	}
}


?>
