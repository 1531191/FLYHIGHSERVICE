package bean;

import dao.VuelosDAO;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import modelo.Vuelos;

@ManagedBean
@RequestScoped
public class VuelosBean implements Serializable
{
    private Vuelos vuelos = new Vuelos();
    private List<Vuelos> lstVuelos;
   
    
    public void registrar()
    {
        VuelosDAO dao = new VuelosDAO();
        try{
            dao.registrar(vuelos);
        }
        catch(Exception e){
            throw e;
        }  
    }
    
    public void listar()
    {
        VuelosDAO dao = new VuelosDAO();
        try{
            lstVuelos = dao.listar();
        }
        catch(Exception e){
            throw e;
        }  
    } 

    /**
     * @return the vuelos
     */
    public Vuelos getVuelos() {
        return vuelos;
    }

    /**
     * @param vuelos the vuelos to set
     */
    public void setVuelos(Vuelos vuelos) {
        this.vuelos = vuelos;
    }

    /**
     * @return the lstVuelos
     */
    public List<Vuelos> getLstVuelos() {
        return lstVuelos;
    }

    /**
     * @param lstVuelos the lstVuelos to set
     */
    public void setLstVuelos(List<Vuelos> lstVuelos) {
        this.lstVuelos = lstVuelos;
    }

  
}