



<div class="col-md-8 cartelera">
					
					<%
							Servicio servicio;
						    		  
						    		  for (int numTarjeta = 0; numTarjeta < ((ArrayList<Servicio>) request.getAttribute("servicios")).size(); numTarjeta++){
						    			  
						    			  servicio = ((ArrayList<Servicio>) request.getAttribute("servicios")).get(numTarjeta);
						 		
						%>
					
					<div class="card mb-3 cartel" style="max-width: 540px;">
							  <div class="row no-gutters">
							    <div class="col-md-4">
							      <img src="<%=servicio.get_imagen_servicio()%>" class="card-img" alt="...">
							    </div>
							    <div class="col-md-8">
							      <div class="card-body">
							        <h5 class="card-title"> <a href="<%=servicio.get_url()%>">  <%=servicio.get_nombre_servicio()%> </a></h5>
							        <p class="card-text"><%=servicio.get_descripcion_servicio()%></p>							        
							        <%if (servicio.get_id_rubro()==1){out.println("<p class='card-text'><small class='text-muted'>Feria de Servicios - Asistencia </small></p>");
							        }else if(servicio.get_id_rubro()==2){out.println("<p class='card-text'><small class='text-muted'>Feria de Servicios - Hogar </small></p>");
							        }else if(servicio.get_id_rubro()==3){out.println("<p class='card-text'><small class='text-muted'>Feria de Servicios - Eventos </small></p>");
							        }else if(servicio.get_id_rubro()==4){out.println("<p class='card-text'><small class='text-muted'>Feria de Servicios - Artesanal </small></p>");
							        
						    		}%> 
				
							      </div>
							    </div>
							  </div>
							</div>
							
							<%}%>
					</div> 