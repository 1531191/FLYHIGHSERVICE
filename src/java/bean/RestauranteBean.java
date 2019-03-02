/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.RestauranteDAO;
import java.io.Serializable;
import java.util.List;
import modelo.Restaurante;
import javax.faces.bean.ManagedBean;
import javax.faces.view.ViewScoped;
/**
 *
 * @author MAICOL
 */
@ManagedBean
@ViewScoped
public class RestauranteBean implements Serializable{
    
    private Restaurante restaurante = new Restaurante();
    private List<Restaurante> lstRestaurante;

    public Restaurante getRestaurante() {
        return restaurante;
    }

    public void setRestaurante(Restaurante restaurante) {
        this.restaurante = restaurante;
    }

    public List<Restaurante> getLstRestaurante() {
        return lstRestaurante;
    }

    public void setLstRestaurante(List<Restaurante> lstRestaurante) {
        this.lstRestaurante = lstRestaurante;
    }

    
    public void registrar()
    {
        RestauranteDAO dao = new RestauranteDAO();
        try{
            dao.registrar(restaurante);
        }
        catch(Exception e){
            throw e;
        }  
    }
    
    public void listar()
    {
        RestauranteDAO dao = new RestauranteDAO();
        try{
            lstRestaurante=dao.listar();
        }
        catch(Exception e){
            throw e;
        }  
    
    }
}
