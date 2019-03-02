/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author MAICOL
 */
public class Restaurante {
    private int codigo;
    private String lugar;
    private String restaurante;
    private String fechainicio;
    private String fechafinal;
    private int numeroreserva;

    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the lugar
     */
    public String getLugar() {
        return lugar;
    }

    /**
     * @param lugar the lugar to set
     */
    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    /**
     * @return the restaurante
     */
    public String getRestaurante() {
        return restaurante;
    }

    /**
     * @param restaurante the restaurante to set
     */
    public void setRestaurante(String restaurante) {
        this.restaurante = restaurante;
    }

    /**
     * @return the fechainicio
     */
    public String getFechainicio() {
        return fechainicio;
    }

    /**
     * @param fechainicio the fechainicio to set
     */
    public void setFechainicio(String fechainicio) {
        this.fechainicio = fechainicio;
    }

    /**
     * @return the fechafinal
     */
    public String getFechafinal() {
        return fechafinal;
    }

    /**
     * @param fechafinal the fechafinal to set
     */
    public void setFechafinal(String fechafinal) {
        this.fechafinal = fechafinal;
    }

    /**
     * @return the numeroreserva
     */
    public int getNumeroreserva() {
        return numeroreserva;
    }

    /**
     * @param numeroreserva the numeroreserva to set
     */
    public void setNumeroreserva(int numeroreserva) {
        this.numeroreserva = numeroreserva;
    }
    
    
}
