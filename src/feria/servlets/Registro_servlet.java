package feria.servlets;

import entidades.Registro;
import entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;


@WebServlet("/registro")
public class Registro_servlet extends HttpServlet {


	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

		
		
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	 PrintWriter out = response.getWriter();
    	 //Connection con = null;
       //  Statement stm = null;
       //  ResultSet rs = null;

         String user = "root";
         String pass = "";
         String url = "jdbc:mysql://localhost:3306/proyecto?user=" + user
                 + "&password=" + pass;
    	
    	String nombre=request.getParameter("nombre");
    	String apellido=request.getParameter("apellido");
    	String mail=request.getParameter("mail");
    	String password=request.getParameter("password1");
    	String password_confirm=request.getParameter("password2");
    	
    	//String sql = null;
    	
    	  
    
      	  
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");

        		Connection con = DriverManager.getConnection(url);
             
        		Statement stm = con.createStatement();
        		
        		String sql ="INSERT INTO usuarios(nombre, apellido, mail, password) VALUES ('"+nombre+"', '"+apellido+"', '"+mail+"', '"+password+"') ";
        		
        			 if(password_confirm.contentEquals(password)) {
                         
	              int  rst = stm.executeUpdate(sql);            
	              JOptionPane.showMessageDialog(null, "Te registraste con exito!");
            
              
              } else {
            	  request.getRequestDispatcher("registro.jsp").forward(request, response);
              }
              
    	}
    	catch (Exception e){
    		System.out.print(e);
    		e.printStackTrace();
    		JOptionPane.showMessageDialog(null, e);

            response.sendRedirect("registro.jsp");
    		
    	}

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}