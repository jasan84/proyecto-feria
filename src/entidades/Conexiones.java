package entidades;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Conexiones {
	

	
	
	 Connection con = null;
     Statement stm = null;
     ResultSet rs = null;

     String user = "root";
     String password = "";

     String url = "jdbc:mysql://localhost:3306/proyecto?user=" + user
             + "&password=" + password;

     ArrayList<Servicio> listaEventos= new ArrayList<>();

}
