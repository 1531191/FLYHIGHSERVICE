package modelo;
public class Piloto
        
{
    private int codigo;
    private String nombre;
    private String categoria;
    private String numeroavion;
    private int capacidad;
    private double pago;

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
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the numeroavion
     */
    public String getNumeroavion() {
        return numeroavion;
    }

    /**
     * @param numeroavion the numeroavion to set
     */
    public void setNumeroavion(String numeroavion) {
        this.numeroavion = numeroavion;
    }

    /**
     * @return the capacidad
     */
    public int getCapacidad() {
        return capacidad;
    }

    /**
     * @param capacidad the capacidad to set
     */
    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    /**
     * @return the pago
     */
    public double getPago() {
        return pago;
    }

    /**
     * @param pago the pago to set
     */
    public void setPago(double pago) {
        this.pago = pago;
    }

    
    
}