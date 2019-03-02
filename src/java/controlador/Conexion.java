/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Conexion {
    private String username="root";
    private String password="";
    private String HOST="localhost";
    private String PORT="8080";
    private String DB="bdviajes";
    private String classname="com.mysql.jdbc.Driver";
    private String URL="jdbc:mysql://"+HOST+":"+PORT+":"+DB;
    
    private Connection con;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.con = (Connection) DriverManager.getConnection("jdbc:mysql://"
                    + "localhost:3306/"+this.DB, this.username, this.password);
        } catch (ClassNotFoundException e) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, e);
        }catch(SQLException e){
            System.out.println("ERROR"+e);
        }
 
    }
    public Connection getConexcion(){
        return con;
    }
    public static void main(String[] args){
       Conexion con = new Conexion();
    }
}