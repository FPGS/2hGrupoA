<!DOCTYPE html>
<!--
 * A Design by GraphBerry
 * Author: GraphBerry
 * Author URL: http://graphberry.com
 * License: http://graphberry.com/pages/license
-->
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<script src="js/modernizr.custom.js"></script>
	<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<div class="loader">
		<div class="project-loader">
			<div class="bubblingG">
				<span id="bubblingG_1"></span>
				<span id="bubblingG_2"></span>
				<span id="bubblingG_3"></span>
			</div>
		</div>
	</div>
	<div class="loading" id="wrapper">
		<!-- Fixed navbar -->
		<div class="navbar navbar-smak navbar-fixed-top " id="navbar" role="navigation">
			<div class="container">
								<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right animate">
						<li><a href="#home">Inicio</a></li>
						<li><a href="#materiales">Materiales</a></li>
						<li><a href="#portfolio">Incidencias</a></li>
						<li><a href="#about">Revisiones</a></li>
						<li><a href="#contact">Observaciones</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<div style="position: fixed; z-index: -99; width: 100%; height: 100%"></div>
		<section id="home" class="home home-fullscreen">
			<div class="slide text-slider-wrapper">
				<div class="container">
				BIENVENIDO A LA PLATAFORMA DEL INVENTARIO DE SALESIANOS ZARAGOZA
				</div>
			</div>
			<a href="#materiales" class="go-to godown">
				<span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
				</span>
			</a>
		</section>
		<section id="materiales" class="gray">
			<div class="container pad-bot-50">
				<div class="heading">
					<div>Lista de materiales</div>
						<table class="tablamateriales">
				            
				            <tr>
				                <th>Aparato</th>
				                <th>Modelo</th>
				                <th>Marca</th>
				                <th>Cantidad</th>
				                <th>Ubicacion</th>
				            </tr>
				            
				            <tr>
<?php
include("conexion.php");
//creamos la consulta
$sql="SELECT m.aparato, m.modelo, ma.marca, m.cantidad, u.ubicacion FROM materiales as m, marca as ma, ubicacion as u WHERE m.idUbicacion = u.idUbicacion AND m.idMarca = ma.idMarca;";
//ejecutamos la consulta
$registros=mysqli_query($conexion,$sql);
//leemos el contenido de $registros
while ($linea=mysqli_fetch_array($registros))
{
	echo "<tr><td>$linea[aparato]</td><td>$linea[modelo]</td><td>$linea[marca]</td><td>$linea[cantidad]</td><td>$linea[ubicacion]</td></tr>";
	echo "<tr><td colspan='7'><hr></td></tr>";
}
mysqli_close($conexion);
?>

				            </tr>
				       </table>	
       			</div>
       					
			</div>
		</section>
		<section class="portfolio" id="portfolio">
			<div class="container">
				<div class="heading">
					<div>Incidencias</div>
					<table class="tablamateriales">
				            
				            <tr>
				                <th>Aparato</th>
				                <th>Modelo</th>
				                <th>Marca</th>
				                <th>Cantidad</th>
				                <th>Ubicacion</th>
				            </tr>
				            
				            <tr>
				                <td>TABLA</td>
				            </tr>
				      </table>	

				</div>
		</section>
		<section id="about">
			<div class="container">
				<div class="heading">
					<div>Revisiones</div>
					<h1>Who we are</h1>
					<div class="divider">
									
		</section>
		<section id="clients">
			<div class="container">
			</div>
		</section>
		<section id="contact" class="gray">
			<div class="branded-section contact-form">
				<div class="masked">
					<div class="container">
						<div class="heading">
							<h1 class="light-font">Observaciones</h1>
							
						</div>
						<form class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-4" style="position:relative">
									<input type="text" name="Name" data-new-placeholder="�Cual es tu nombre?" class="form-control label_better" placeholder="Nombre">
								</div>
								<div class="col-sm-4">
									<input type="text" name="Email" class="form-control label_better" placeholder="correo">
								</div>
								<div class="col-sm-4">
									<input type="text" name="Phone" class="form-control label_better" placeholder="teléfono">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<textarea class="form-control label_better" placeholder="introduce aquí tu comentario." rows="7"></textarea>
								</div>
							</div>
							<div class="form-group commands">
								<button class="btn btn-primary">Enviar mensaje</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
			</div>
	<!-- Load all jsavascrip files -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script type="text/javascript" src="js/jquery.label_better.js"></script>
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>
	<script type="text/javascript" src="js/jquery.easypiechart.js"></script>
	<script type="text/javascript" src="js/jquery.inview.js"></script>
	<script type="text/javascript" src="js/countUp.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="js/grid.js"></script>
	<script>
	$(function() {
		Grid.init();
	});
	</script>
</body>
</html>