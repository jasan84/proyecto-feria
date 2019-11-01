package feria.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.swing.JOptionPane;


/**
 * Servlet implementation class Login_servlet
 */
			@WebServlet("/logout")
			public class Logout_servlet extends HttpServlet {
				 protected void doGet(HttpServletRequest request, HttpServletResponse response)  
			             throws ServletException, IOException {  
			response.setContentType("text/html");  
			PrintWriter out=response.getWriter();
			
			HttpSession session=request.getSession();  
			
			//out.println("hola");
			
			session.invalidate();  	
			request.getRequestDispatcher("home.jsp").include(request, response);  
			
			out.close();
  
			
			
}  
					
}  