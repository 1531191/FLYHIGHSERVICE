/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Hotel;

/**
 *
 * @author MAICOL
 */
public class HotelDAO extends dao {
    
      public void registrar(Hotel datos_hotel){
        try {
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareStatement("insert into hoteles (hotel,fecha_entrada,fecha_salida,habitacion) values(?,?,?,?)");
            pst.setString(1, datos_hotel.getHotel());
            pst.setString(2, datos_hotel.getFechaentrada());
            pst.setString(3, datos_hotel.getFechasalida());
            pst.setInt(4, datos_hotel.getHabitacion());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HotelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
    }
    
    public List<Hotel> listar()
    {
        List<Hotel> lista = null;
        ResultSet rs;
        try {
            
            
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareCall("SELECT idhotel, hotel,fecha_entrada,fecha_salida,habitacion FROM hoteles");
            rs = pst.executeQuery();
            lista = new ArrayList();
            
            while(rs.next())
            {
                Hotel usu = new Hotel();
                usu.setCodigo(rs.getInt("idhotel"));
                usu.setHotel(rs.getString("hotel"));
                usu.setFechaentrada(rs.getString("fecha_entrada"));
                usu.setFechasalida(rs.getString("fecha_salida"));
                usu.setHabitacion(rs.getInt("habitacion"));
                lista.add(usu);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HotelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return lista;
    }

}
