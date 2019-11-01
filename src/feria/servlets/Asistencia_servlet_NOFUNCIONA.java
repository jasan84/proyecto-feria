package feria.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import entidades.Servicio;

@WebServlet("/Asistencia_servlet")
public class Asistencia_servlet_NOFUNCIONA extends HttpServlet {
       
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    	
    	PrintWriter out = response.getWriter();

        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;

        String user = "root";
        String password = "";

        String url = "jdbc:mysql://localhost:3306/proyecto?user=" + user
                + "&password=" + password;

    	
    	ArrayList<Servicio> listaAsistencia = new ArrayList<>(); 
    	
    	try {
    		 Class.forName("com.mysql.cj.jdbc.Driver");

             con = DriverManager.getConnection(url);
             
             System.out.println("Conexion establecida");

             stm = con.createStatement();

             String sql = "SELECT * FROM servicios";

             rs = stm.executeQuery(sql);
    		
    		while (rs.next()) {
    			
    			Servicio servicio = new Servicio();
    			
    			servicio.set_nombre_servicio(rs.getString("nombre_servicio"));
    			servicio.set_descripcion_servicio(rs.getString("descripcion_servicio"));
    			servicio.set_imagen_servicio(rs.getString("imagen"));
    			servicio.set_url(rs.getString("url")); 
    			
    			System.out.println(rs);
    			
    			listaAsistencia.add(servicio);
    		}
    		
    		
    		
    		stm.close();
    		rs.close();
    		con.close();
    	}
    	
    	catch (ClassNotFoundException ex) {
    		System.out.println(ex.getMessage());
    	}
    	catch (SQLException e) {
    		out.println(e.getMessage());
    	}
    	
    	request.setAttribute("servicios", listaAsistencia);
    	request.getRequestDispatcher("asistencia.jsp").forward(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
