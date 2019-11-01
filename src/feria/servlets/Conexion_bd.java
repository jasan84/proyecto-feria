package feria.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entidades.Servicio;
import entidades.Usuario;


public class Conexion_bd {
	
	  public static void main (String [] args){
		    
	        Connection con = null;
	        Statement stm = null;
	        ResultSet rs = null;
	        
	        String user = "root";
	        String password = "";
	        String url = "jdbc:mysql://localhost:3306/proyecto?user=" + user
	                + "&password=" + password;
	        
	        System.out.println(url);
	        
	        try {
	        
	            Class.forName("com.mysql.jdbc.Driver");
	            
	            con = DriverManager.getConnection(url);
	            
	            System.out.println ("Conectado");
	            
	            stm = con.createStatement();
	            
	            String sql = "SELECT * FROM usuarios";
	            
	            rs = stm.executeQuery(sql);
	            
	            System.out.println(rs);
	            
	            while (rs.next()) {
	            
	                System.out.println(rs.getString("nombre"));
	            	
	            	Usuario usuario = new Usuario();
	            	
	            	usuario.set_nombre(rs.getString("nombre"));
	            	//usuario.set_imagen_servicio(rs.getString("imagen"));
	            }
	            
	            stm.close();
	            rs.close();
	            
	            con.close();
	        }
	        
	        catch (ClassNotFoundException ex){
	        
	            System.out.println("No se encontro el Driver SQL");
	        }
	        
	        catch (SQLException e){
	        
	            System.out.println(e.getErrorCode());
	       
	        }
	    }
	    

}
