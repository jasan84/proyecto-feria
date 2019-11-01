
<%
	String usuario = (String) session.getAttribute("usuario");
	String nombre = (String) session.getAttribute("nombre");
%>



<nav class="navbar navbar-expand-sm navbar-light" id="barranav">
	<!--  bg-light-->

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<!-- <a class="navbar-brand" href="#">Hidden brand</a> -->
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">


			<!-- BOTON DROP -->

			<div class="btn-group dropright">

				<%
					if (usuario != null) {
						out.println(
								"<form method='get' action='logout' class='px-4 py-3'><button type='submit' class='btn btn-outline-dark' data-toggle='tooltip' data-placement='right' title='CERRAR SESION'>"
										+ nombre + "</button></form>");
					} else {%>

				<button type="button" class="btn btn-light dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Ingresá</button>
				<%}%>
				<!-- INICIO DROPDOWN FORMULARIO DE INGRESO -->

				<div class="dropdown-menu">
					<%
						if (usuario != null) {
							out.println(
									"<form method='get' action='logout' class='px-4 py-3'><button type='submit' class='btn btn-outline-secondary'>Salir</button></form>");

						} else {%>

					<form method="post" action="login" class="px-4 py-3">
						<div class="form-group">
							<label for="exampleDropdownFormEmail1">Usuario</label> <input
								name="usuario" type="email" class="form-control"
								id="exampleDropdownFormEmail1" placeholder="@">
						</div>
						<div class="form-group">
							<label for="exampleDropdownFormPassword1">Contraseña</label> <input
								name="password" type="password" class="form-control"
								id="exampleDropdownFormPassword1" placeholder="* * * *">
						</div>
						<div class="form-group"></div>
						<button type="submit" class="btn btn-outline-secondary">Ingresar</button>
					</form>


					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="registro.jsp">¿Todavia sin usuario?</a> <a class="dropdown-item" href="#">¿Te olvidaste la contraseña?</a>
				</div>

				<%}%>
				<!---FIN DE FORMULARIO DE INGRESO  -->
			</div>

		</ul>
		<form class="form-inline my-2 my-lg-0" method="get" action="busqueda">
			<input class="form-control mr-sm-2" type="search" name="buscar"
				placeholder="Buscá" aria-label="Search">
			<button class="btn btn-light  my-2 my-sm-0"type="submit">Buscá</button>
		</form>
	</div>
</nav>