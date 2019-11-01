<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<title>Feria de Servicios - Home</title>

	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/homestyle.css"/>
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
</head>
<body>
	<%@include file="common/header.jsp" %>
	
	
	<!-- BARRA NAV -->
	<%@include file="common/nav.jsp" %>
	
	<%@include file="common/carousel.jsp" %>
	
	<section>
		<article>
			
			<div class="row no-gutters">
		
				<div class="col-md-3">
					<div class="tarjeta" style="background-image:url(images/catasistencia.jpg)";>
								<a href="asistencia"><h2 id="titulo_asistencia">Asistencia</h2></a>
				</div>
			</div>
		
				<div class="col-md-3">
					<div class="tarjeta" style="background-image:url(images/cathogar.jpg)";>
								<a href="hogar"><h2 id="titulo_hogar">Hogar</h2></a>
				</div>
			</div>
		
				<div class="col-md-3">
					<div class="tarjeta" style="background-image:url(images/cateventos.jpg)";>
								<a href="eventos"><h2 id="titulo_eventos">Eventos</h2></a>
				</div>
			</div>
		
				<div class="col-md-3">
					<div class="tarjeta" style="background-image:url(images/catartesanal.jpg)";>
								<a href="artesanal"><h2 id="titulo_artesanal">Artesanal</h2></a>
				</div>
			</div>
			</div>
		</article>
	</section>

	<%@include file="common/footer.jsp" %>
	
	<script src="vendor/jquery/jquery-3.4.1.min.js">
</script>

<script src="vendor/popper/popper.min.js">
</script>

<script src="vendor/bootstrap/js/bootstrap.min.js">
</script>
</body>
</html>