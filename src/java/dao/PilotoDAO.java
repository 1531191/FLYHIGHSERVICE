package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Piloto;


public class PilotoDAO extends dao
{
    public void registrar(Piloto datos_piloto)
    {
        try {
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareStatement("INSERT INTO pilotos (nombre, categoria,numeroavion,capacidad,pago) values(?,?,?,?,?)");
            pst.setString(1, datos_piloto.getNombre());
            pst.setString(2, datos_piloto.getCategoria());
            pst.setString(3, datos_piloto.getNumeroavion());
            pst.setInt(4, datos_piloto.getCapacidad());
            pst.setDouble(5, datos_piloto.getPago());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PilotoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
    }
    
    public List<Piloto> listar()
    {
        List<Piloto> lista = null;
        ResultSet rs;
        try {
            
            
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareCall("SELECT idpiloto, nombre, categoria,numeroavion,capacidad,pago FROM pilotos");
            rs = pst.executeQuery();
            lista = new ArrayList();
            
            while(rs.next())
            {
                Piloto usu = new Piloto();
                usu.setCodigo(rs.getInt("idpiloto"));
                usu.setNombre(rs.getString("nombre"));
                usu.setCategoria(rs.getString("categoria"));
                usu.setNumeroavion(rs.getString("numeroavion"));
                usu.setCapacidad(rs.getInt("capacidad"));
                usu.setPago(rs.getDouble("pago"));
                lista.add(usu);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PilotoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return lista;
    }

}
