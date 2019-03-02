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
import modelo.Piloto;
import modelo.Restaurante;

/**
 *
 * @author MAICOL
 */
public class RestauranteDAO extends dao{
        public void registrar(Restaurante datos_restaurante)
    {
        try {
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareStatement("INSERT INTO restaurantes (lugar, restaurante,fecha_inicio,fecha_final,numeroreserva) values(?,?,?,?,?)");
            pst.setString(1, datos_restaurante.getLugar());
            pst.setString(2, datos_restaurante.getRestaurante());
            pst.setString(3, datos_restaurante.getFechainicio());
            pst.setString(4, datos_restaurante.getFechafinal());
            pst.setInt(5, datos_restaurante.getNumeroreserva());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestauranteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
    }
    
    public List<Restaurante> listar()
    {
        List<Restaurante> lista = null;
        ResultSet rs;
        try {
            
            
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareCall("SELECT idrestaurante, lugar, restaurante,fecha_inicio,fecha_final,numeroreserva FROM restaurantes");
            rs = pst.executeQuery();
            lista = new ArrayList();
            
            while(rs.next())
            {
                Restaurante usu = new Restaurante();
                usu.setCodigo(rs.getInt("idrestaurante"));
                usu.setLugar(rs.getString("lugar"));
                usu.setRestaurante(rs.getString("restaurante"));
                usu.setFechainicio(rs.getString("fecha_inicio"));
                usu.setFechafinal(rs.getString("fecha_final"));
                usu.setNumeroreserva(rs.getInt("numeroreserva"));
                lista.add(usu);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RestauranteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return lista;
    }
}
