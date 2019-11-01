package feria.servlets;

import entidades.Servicio;
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
import javax.swing.JOptionPane;

@WebServlet("/artesanal")
public class Artesanal_servlet extends HttpServlet {


	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        //Connection con = null;
        //Statement stm = null;
        //ResultSet rs = null;

        String user = "root";
        String password = "";

        String url = "jdbc:mysql://localhost:3306/proyecto?user=" + user
                + "&password=" + password;

        ArrayList<Servicio> listaArtesanal= new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

           Connection con = DriverManager.getConnection(url);
            
            System.out.println("Conexion establecida");

           Statement stm = con.createStatement();

            String sql = "SELECT * FROM servicios WHERE id_rubro = 4";

            ResultSet rs = stm.executeQuery(sql);

            

            while (rs.next()) {

                Servicio servicio= new Servicio();

                servicio.set_nombre_servicio(rs.getString("nombre_servicio"));
                servicio.set_descripcion_servicio(rs.getString("descripcion_servicio"));
                servicio.set_imagen_servicio(rs.getString("imagen"));
                servicio.set_url(rs.getString("url"));
                servicio.set_id_rubro(rs.getInt("id_rubro"));
                
                System.out.println(rs);
                
               // JOptionPane.showMessageDialog(null, servicio.get_id_rubro());
                
                listaArtesanal.add(servicio);
            }

            stm.close();
            rs.close();

            con.close();

        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        } catch (SQLException e) {
            out.println(e.getMessage());

        }

        request.setAttribute("servicios", listaArtesanal);
        
        
        
        request.getRequestDispatcher("artesanal.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}