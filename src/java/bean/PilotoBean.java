package bean;

import bean.*;
import dao.PilotoDAO;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.view.ViewScoped;
import modelo.Piloto;


@ManagedBean
@ViewScoped
public class PilotoBean implements Serializable
{
    private Piloto piloto = new Piloto();
    private List<Piloto> lstPiloto;

    
    public void registrar()
    {
        PilotoDAO dao = new PilotoDAO();
        try{
            dao.registrar(piloto);
        }
        catch(Exception e){
            throw e;
        }  
    }
    
    public void listar()
    {
        PilotoDAO dao = new PilotoDAO();
        try{
            lstPiloto=dao.listar();
        }
        catch(Exception e){
            throw e;
        }  
    
    }

    /**
     * @return the piloto
     */
    public Piloto getPiloto() {
        return piloto;
    }

    /**
     * @param piloto the piloto to set
     */
    public void setPiloto(Piloto piloto) {
        this.piloto = piloto;
    }

    /**
     * @return the lstPiloto
     */
    public List<Piloto> getLstPiloto() {
        return lstPiloto;
    }

    /**
     * @param lstPiloto the lstPiloto to set
     */
    public void setLstPiloto(List<Piloto> lstPiloto) {
        this.lstPiloto = lstPiloto;
    }
}