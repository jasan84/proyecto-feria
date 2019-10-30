/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author adrian
 */
public class Conexion {
    
    public static void main (String [] args){
    
        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;
        
        String user = "root";
        String password = "";
        String url = "jdbc:mysql://localhost:3306/proyecto2?user=" + user
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
                System.out.println(rs.getString("apellido"));            
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

    

