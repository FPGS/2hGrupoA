<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>proyecto bases de datos</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="logo">
							<span class="icon fa-diamond"></span>
						</div>
						<div class="content">
							<div class="inner">
								<h1>Salesianos Zaragoza</h1>
									<p> 
										<a href="http://zaragoza.salesianos.edu/"> Pagina principal</a> <br />
									</p>
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="#intro">Iniciar Sesion</a></li>
								<li><a href="#work">Registrase</a></li>
								<li>
								
								<!--<li><a href="#elements">Elements</a></li>-->
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Intro -->
							<article id="intro">
								<h2 class="major">Inicio sesion</h2>
								<span class="image main"><img src="./imagenes/logosz.jpg" width="500" /></span>
								<?php
									include("conexion.php");
								?>
									<form name="usuarios" id="usuarios" method="post" action="login.php">
									<table align="center" width="40%">
									
									<tr>
										<td>Usuario: </td>
										<td><input type="text" name="usuario" id="usuario" placeholder="usuario">
									</tr>
									<tr>
										<td>Contraseña:</td>
										<td><input type="password" name="contraseÃ±a" id="contraseÃ±a" placeholder="contraseÃ±a"></td>
									</tr>
									
									</table>
									<tr>
										<td colspan="2" align="center">
											<input type="submit" value="Entrar">
										</td>
									</tr>
									</form>
							</article>

						<!-- Work -->
							<article id="work">
								<h2 class="major">Registrate aqui</h2>
								<span class="image main"><img src="imagenes/descarga.jpg" alt="" /></span>
								<form name="registro" id="registro" method="post" action="registrar.php">

								<table align="center" width="40%">
									<tr>
										<td>Procedencia: </td>
										<td><input type="radio" id="cbox1" name="cbox1" value="profesor"> <label for="cbox1">Soy profesor del centro</label>
										
										<input type="radio"  id="cbox1" name="cbox1" value="alumno"> <label for="cbox1"> Soy alumno del centro</label>
									</tr>
									<tr>
										<td>Nombre y apellidos: </td>
										<td><input type="text" name="nombrere" id="nombrere" >
									</tr>
									<tr>
										<td>Usuario(Dni): </td>
										<td><input type="text" name="usuariore" id="usuariore" >
									</tr>
									<tr>
										<td>Contrasea:</td>
										<td><input type="password" name="clavere" id="clavere" >
										
									</tr>
									<tr>
										<td>Fecha de nacimiento: </td>
										<td><input type="date" name="fechare" id="fechare" >
									</tr>
									
									
									
								</table>
								
									<tr>
										<td colspan="2" align="center">
											<input type="submit" value="Registrar">
										</td>
									</tr>
								</form>										
							</article>

						

						<!-- Elements -->
							<article id="elements">
								<h2 class="major">Elements</h2>

																
								
							</article>

					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
