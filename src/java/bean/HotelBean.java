/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.HotelDAO;
import dao.PilotoDAO;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ReferencedBean;
import javax.faces.view.ViewScoped;
import javax.interceptor.Interceptor;
import modelo.Hotel;
import modelo.Piloto;

/**
 *
 * @author MAICOL
 */

 @ManagedBean
@ViewScoped
@ReferencedBean
public class HotelBean implements Serializable{
   

    private Hotel hotel = new Hotel();
    private List<Hotel> lstHotel;

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public List<Hotel> getLstHotel() {
        return lstHotel;
    }

    public void setLstHotel(List<Hotel> lstHotel) {
        this.lstHotel = lstHotel;
    }

    
    public void registrar()
    {
        HotelDAO dao = new HotelDAO();
        try{
            dao.registrar(hotel);
        }
        catch(Exception e){
            throw e;
        }  
    }
    
    public void listar()
    {
        HotelDAO dao = new HotelDAO();
        try{
            lstHotel=dao.listar();
        }
        catch(Exception e){
            throw e;
        }  
    
    }
}
