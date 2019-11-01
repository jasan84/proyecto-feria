<%@page import="entidades.Servicio"%>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Feria de Servicios - Hogar</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/hogarstyle.css"/>
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
</head>
<body>

<%@ include file="common/header.jsp" %>


	<!-- BARRA NAV -->
	<%@include file="common/nav.jsp" %>

<%@ include file="common/carousel.jsp" %>

<section>
		
		<article>
			
				<div class="row no-gutters">
					
					<div class="col-md-4 presentacion">
					
							<h5>Hogar</h5>
						
						<p>Acá vas a poder encontrar servicios que te brinden ayuda en
						mantenimineto del hogar... reparaciones... pintura... instalaciones...<br>
						</p>
						

					</div>
					
					<!-- TARJETA  -->

					<%@include file="common/tarjeta.jsp" %> 
					
					<!--FIN DE TARJETA  -->
				</div>
		</article>
	</section>

<%@ include file="common/footer.jsp" %>

<script src="vendor/jquery/jquery-3.4.1.min.js">
</script>

<script src="vendor/popper/popper.min.js">
</script>

<script src="vendor/bootstrap/js/bootstrap.min.js">
</script>
</body>
</html>