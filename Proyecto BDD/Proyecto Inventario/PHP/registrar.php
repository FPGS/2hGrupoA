<?php
//Recuperamos datos del formulario
$tiu1=$_POST['cbox1'];
$tiu2=$_POST['cbox2'];
$nom=$_POST['nombrere'];
$dni=$_POST['usuariore'];
$cla=$_POST['clavere'];
$fen=$_POST['fechare'];

//conectamos con la BD
include("conexion.php");
//creamos consulta
$sql="INSERT INTO usuarios(Profesor,Alumno,nombre,dni,clave,fechaNacimiento) VALUES ('$tiu1','$tiu2','$nom','$dni','$cla','$fen')";
//ejecutamos la consulta
mysqli_query($conexion,$sql) or die("Error en la
consulta de inserción $sql");
//cerramos la conexion
mysqli_close($conexion);
//redirigeremos a la pagina inicial
header("location:index.php");
?>           