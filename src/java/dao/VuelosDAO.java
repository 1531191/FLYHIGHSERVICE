package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Vuelos;

public class VuelosDAO extends dao
{
    public void registrar(Vuelos datos_Vuelo)
    {
        try {
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareStatement("insert into vuelos (origen,destino,salida,retorno,pasajeros) values(?,?,?,?,?)");
            pst.setString(1, datos_Vuelo.getOrigen());
            pst.setString(2, datos_Vuelo.getDestino());
            pst.setString(3, datos_Vuelo.getSalida());
            pst.setString(4, datos_Vuelo.getRetorno());
            pst.setString(5, datos_Vuelo.getPasajero());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
    }
    
     public List<Vuelos> listar()
    {
        List<Vuelos> lista = null;
        ResultSet rs;
        try {
            
            
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareCall("SELECT idvuelos,origen,destino,salida,retorno,pasajeros FROM vuelos");
            rs = pst.executeQuery();
            lista = new ArrayList();
            
            while(rs.next())
            {
                Vuelos vue = new Vuelos();
                vue.setCodigo(rs.getInt("idvuelos"));
                vue.setOrigen(rs.getString("origen"));
                vue.setDestino(rs.getString("destino"));
                vue.setSalida(rs.getString("salida"));
                vue.setRetorno(rs.getString("retorno"));
                vue.setPasajero(rs.getString("pasajeros"));
                lista.add(vue);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return lista;
    }
  
}
