<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Feria de Servicios</title>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
</head>


	<body>
				<%@include file="common/header.jsp" %>	
	
 <nav class="navbar navbar-expand-lg navbar-light" id="barranav"><!--  bg-light-->
		 
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		    <!-- <a class="navbar-brand" href="#">Hidden brand</a> -->
		    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		  
				<a href="home.jsp" class="btn btn-outline-info"> Home </a> 
		     

		      	
		    </ul>
		 <!--   <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Buscá" aria-label="Search">
		     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscá</button>
		    </form>  --> 
		  </div>
	</nav> 

	<section>
		
		<article>
			
			<div class="row no-gutters">
				<div class="col-md-12">
				
					<h2 class="titulo">¿Qué hacemos?</h2>
				</div>
			</div>

			<div class="row no-gutters">
				
				<div class="col-md-4">
					<div class="tarjeta" style="background-image:url(images/presentacion001.png")>
					
						<p class="descripcion">Contactamos con un servicio</p>
					</div>					
				</div>

				<div class="col-md-4">
				<div class="tarjeta"  style="background-image:url(images/presentacion002.png")>					
					
							<p class="descripcion">Confeccionamos su página</p>	
						</div>			
				</div>

				<div class="col-md-4">
				<div class="tarjeta" style="background-image:url(images/presentacion003.png")>					
				
							<p class="descripcion">La publicamos en el portal</p>
						</div>					
				</div>
			</div>


		</article>
	</section>
		<hr/>

	<section class="section2">
		<article>

		<div class="row no-gutters">
				<div class="col-md-12">
				
					<h2 class="titulo">¿Cómo funciona?</h2>
				</div>
		</div>
				
		<div class="row no-gutters" style="background-color:#F2949C">
			<div class="col-md-8 instruccion">
				
				<p>Podes elegir entre cuatro categorías. En cada una vas a encontrar todos los servicios que la componen. </p>
			</div>

			<div class="col-md-4 instruccion">

				<img src="images/presentacion003.png" width="100%"/>
			</div>
		</div>
	

		

		<div class="row no-gutters " style="background-color:#BBC8F2">
			<div class="col-md-4 instruccion">

					<img src="images/presentacion003.png" width="100%"/>
			</div>

			<div class="col-md-8 instruccion">
					<p> Recorré la lista. Podés indentificar a los servicios por su nombre y su logo.</p>

			</div>
		</div>

		<div class="row no-gutters" style="background-color:#A7F2F2">
				<div class="col-md-8 instruccion">
					<p>Entrá en los servicios que te gusten y mirá las fotos de lo que ofrecen. </p>

				</div>
				<div class="col-md-4 instruccion">
						<img src="images/presentacion003.png" width="100%"/>
				</div>
		</div>
			
		<div class="row no-gutters" style="background-color:#F2D888">
				<div class="col-md-4 instruccion">
						<img src="images/presentacion003.png" width="100%"/>
				</div>
				<div class="col-md-8 instruccion">
					<p> Cuando encuentres lo que necesitas, contactate y listo! Simple. Rápido. Útil</p>

				</div>
		</div>
		<div class="row no-gutters" style="background-color:#F2AA80">
				<div class="col-md-8 instruccion">
					<p>O podes guardalos en tu cuenta para verlos despues.</p>
					<p>Eso que no sabías dónde buscar, ahora está <a href="home.jsp">aca. </a></p>
			</div>
				<div class="col-md-4 instruccion">
						<img src="images/presentacion003.png" width="100%"/>
				</div>
			</div>
		
		</article>
	</section> 

	<a href="home.jsp"><div id="boton_ingresar">
		<h2>Ingresar</h2></a>	
		
	</div>
	
	
	<hr/>	

	<section>

		<article class="consultas">
			<h2 class="titulo">¿Tenés consultas?</h2>
			<form method="post" action="mailto:info@galeriadeservicios.com.ar">
				<input type="text" name="nombre"  size="35" placeholder="nombre (obligatorio)" required="yes"/>
				<input type="text" name="apellido"  size="35" placeholder="apellido (obligatorio)" required="yes"/>
				<br><br>
				<input type="tel" name="telefono"  size="35" placeholder="teléfono"/>
				<input type="mail" name="mail" size="35"  placeholder="mail (obligatorio)" required="yes"/>
				<br><br>
				<textarea  name="comentarios" rows="3" cols="60" maxlength="180" placeholder="comentario (max 180 caracteres)" required="yes"></textarea><br><br>
				
				<button class="btn btn-outline-primary" type="submit" name="enviar">Enviar</button>
			</form>
		</article>
	</section>
	<hr/>
	
	<%@include file="common/footer.jsp" %>
	
	<script src="vendor/jquery/jquery-3.4.1.min.js">
</script>

<script src="vendor/popper/popper.min.js">
</script>

<script src="vendor/bootstrap/js/bootstrap.min.js">
</script>
	</body>
	
</html>