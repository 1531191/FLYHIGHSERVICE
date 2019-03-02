package bean;

import dao.UsuarioDAO;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.view.ViewScoped;
import modelo.Usuario;

@ManagedBean
@ViewScoped
@RequestScoped
public class UsuarioBean implements Serializable
{
    private Usuario usuario = new Usuario();
    private List<Usuario> lstUsuarios;

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Usuario> getLstUsuarios() {
        return lstUsuarios;
    }

    public void setLstUsuarios(List<Usuario> lstUsuarios) {
        this.lstUsuarios = lstUsuarios;
    }
    
    
    
    public void registrar()
    {
        UsuarioDAO dao = new UsuarioDAO();
        try{
            dao.registrar(usuario);
        }
        catch(Exception e){
            throw e;
        }  
    }
    
    public void listar()
    {
        UsuarioDAO dao = new UsuarioDAO();
        try{
            lstUsuarios = dao.listar();
        }
        catch(Exception e){
            throw e;
        }  
    } 
   
}