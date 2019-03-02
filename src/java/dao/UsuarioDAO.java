package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Usuario;

public class UsuarioDAO extends dao
{
    public void registrar(Usuario datos_usuario)
    {
        try {
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareStatement("insert into login (correo,telefono,usuario,password) values(?,?,?,?)");
            pst.setString(1, datos_usuario.getCorreo());
            pst.setString(2, datos_usuario.getTelefono());
            pst.setString(3, datos_usuario.getUsuario());
            pst.setString(4, datos_usuario.getPassword());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
    }
    
    public List<Usuario> listar()
    {
        List<Usuario> lista = null;
        ResultSet rs;
        try {
            
            
            this.Conectar();
            PreparedStatement pst = this.getCn().prepareCall("SELECT id, correo, telefono,usuario,password FROM login");
            rs = pst.executeQuery();
            lista = new ArrayList();
            
            while(rs.next())
            {
                Usuario usu = new Usuario();
                usu.setCodigo(rs.getInt("id"));
                usu.setCorreo(rs.getString("correo"));
                usu.setTelefono(rs.getString("telefono"));
                usu.setUsuario(rs.getString("usuario"));
                usu.setPassword(rs.getString("password"));
                lista.add(usu);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return lista;
    }
      
     
}
