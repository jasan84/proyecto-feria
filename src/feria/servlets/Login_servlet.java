package feria.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.swing.JOptionPane;

import entidades.Servicio;
import entidades.Usuario;


/**
 * Servlet implementation class Login_servlet
 */
@WebServlet("/login")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_servlet() {
        super();
        // TODO Auto-generated constructor stub
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
		PrintWriter out = response.getWriter();
		try{
			
	        String usuario = request.getParameter("usuario");   
	        String password = request.getParameter("password");
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?" + "user=root&password=");    
	        
	        PreparedStatement pst = con.prepareStatement("SELECT * FROM usuarios WHERE  mail=? AND password=?");
	      	        
	        pst.setString(1, usuario);
	        pst.setString(2, password);
	        
	       
	        
	        ResultSet rs = pst.executeQuery();
	        
	        if(rs.next()) {
	           
	           HttpSession session=request.getSession(true);  
	          
	           session.setAttribute("usuario", usuario);
	           session.setAttribute("password", password);

	           
	        	Usuario usuariolog = new Usuario();
	        	
	        	usuariolog.set_nombre(rs.getString("nombre"));
	        	
	        	String nombre= usuariolog.get_nombre();   
	        		        	
	        	request.getSession().setAttribute("nombre",nombre);
	        	
	           
	          // JOptionPane.showMessageDialog(null, "LOGIN CORRECTO!");
	           
	           
		       //request.getRequestDispatcher("home.jsp").include(request, response);
	           response.sendRedirect("home.jsp");

	          
	       		        
	        } else {
	        	JOptionPane.showMessageDialog(null, "LOGIN INCORRECTO!");
	        	response.sendRedirect("home.jsp");
	        }
	        
	   }
	   catch(Exception e){       
	       out.println(e);       
	   } 
		
		
		
		
		doGet(request, response);
	}

}
