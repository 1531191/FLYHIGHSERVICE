/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Vuelos;

/**
 *
 * @author LAB-USR-AQ265-A0804
 */
public class Consultas extends Conexion {
    public boolean autenticacion(String usuario, String password){
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            String consulta="select * from login where usuario = ? and password = ?";
            pst = getConexcion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            
            }
        } catch (Exception e) {
            System.out.println("ERROR"+e);
        }finally{
            try {
                if(getConexcion() !=null)getConexcion().close();
                if(pst !=null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
                System.out.println("ERROR"+e);
            }
        }
        return false;
    }
    public boolean Registrar(String correo,String telefono, String usuario, String password){
        PreparedStatement pst=null;
        try {
            String consulta="insert into login (correo,telefono,usuario,password,perfil) values(?,?,?,?,?)";
            pst=getConexcion().prepareStatement(consulta);
            pst.setString(1, correo);
            pst.setString(2, telefono);
            pst.setString(3, usuario);
            pst.setString(4, password);
             pst.setString(5, "C");
            
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERROR"+e);
        }finally{
            try {
                   if(getConexcion() !=null) getConexcion().close();
                   if(pst !=null) pst.close();
            } catch (Exception e) {
                System.out.println("ERROR"+e);
            }
        }
        return false;
    }
    
    public boolean Registrarvuelo(String origen,String destino, String salida, String retorno,String pasajeros,String usuario){
        PreparedStatement pst=null;
        try {
            String consulta="insert into vuelos (origen,destino,salida,retorno,pasajeros,usuario) values(?,?,?,?,?,?)";
            pst=getConexcion().prepareStatement(consulta);
            pst.setString(1, origen);
            pst.setString(2, destino);
            pst.setString(3, salida);
            pst.setString(4, retorno);
            pst.setString(5, pasajeros);
             pst.setString(6, usuario);
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERROR"+e);
        }finally{
            try {
                   if(getConexcion() !=null) getConexcion().close();
                   if(pst !=null) pst.close();
            } catch (Exception e) {
                System.out.println("ERROR"+e);
            }
        }
        return false;
    }
    public boolean Registrahotel(String hotel,String fecha_entrada, String fecha_salida, String habitacion){
        PreparedStatement pst=null;
        try {
            String consulta="insert into hoteles (hotel,fecha_entrada,fecha_salida,habitacion) values(?,?,?,?)";
            pst=getConexcion().prepareStatement(consulta);
            pst.setString(1, hotel);
            pst.setString(2, fecha_entrada);
            pst.setString(3, fecha_salida);
            pst.setString(4, habitacion);
            
            
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERROR"+e);
        }finally{
            try {
                   if(getConexcion() !=null) getConexcion().close();
                   if(pst !=null) pst.close();
            } catch (Exception e) {
                System.out.println("ERROR"+e);
            }
        }
        return false;
    }
    public boolean Registrarestaurante(String lugar,String restaurante, String fecha_inicio, String fecha_final,String numeroreserva){
        PreparedStatement pst=null;
        try {
            String consulta="insert into restaurantes (lugar,restaurante,fecha_inicio,fecha_final,numeroreserva) values(?,?,?,?,?)";
            pst=getConexcion().prepareStatement(consulta);
            pst.setString(1, lugar);
            pst.setString(2, restaurante);
            pst.setString(3, fecha_inicio);
            pst.setString(4, fecha_final);
            pst.setString(5, numeroreserva);
            
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            System.out.println("ERROR"+e);
        }finally{
            try {
                   if(getConexcion() !=null) getConexcion().close();
                   if(pst !=null) pst.close();
            } catch (Exception e) {
                System.out.println("ERROR"+e);
            }
        }
        return false;
    }
     public static void main(String[] args){
       Consultas co = new Consultas();
         System.out.println(co.Registrarestaurante("cuzco", "piquito", "20-07-2018", "25-07-2018", ""));
    }
     
     
     
      public List<Vuelos> VerReserva(String usuario){
      ArrayList<Vuelos> data = new ArrayList<Vuelos>();
          System.out.println("asdsadasdsad"+ usuario);
            
            PreparedStatement pstm = null;
            ResultSet rs = null;
            try {
                 String sql ="select * from vuelos where usuario = ?";
                  pstm=getConexcion().prepareStatement(sql);
                 pstm.setString(1, usuario);
              
                rs = pstm.executeQuery();
                Vuelos obj = null;
                while(rs.next()){
                    obj = new Vuelos();
                    
                    obj.setOrigen(rs.getString("origen"));
                    obj.setDestino(rs.getString("destino"));
                    obj.setSalida(rs.getString("salida"));
                    obj.setRetorno(rs.getString("retorno"));
                    obj.setPasajero(rs.getString("pasajeros"));
                    data.add(obj);
                }
            } catch (Exception e) {
                    e.printStackTrace();
            } finally{
                try {
                    if(rs!= null) rs.close();
                    if(pstm!= null) pstm.close();
                    
                } catch (Exception e2) {
                }
            }
            return data;
     
     }
}
