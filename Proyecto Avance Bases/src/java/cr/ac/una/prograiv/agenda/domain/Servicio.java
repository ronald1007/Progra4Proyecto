package cr.ac.una.prograiv.agenda.domain;
// Generated Oct 14, 2017 2:47:06 PM by Hibernate Tools 4.3.1



/**
 * Servicio generated by hbm2java
 */
public class Servicio  implements java.io.Serializable {


     private int numeroServicio;
     private Cliente cliente;
     private Conductor conductor;
     private Integer costo;
     private String retroalimentacion;
     private String tiempoDuracion;
     private String puntoLlegada;
     private String puntoSalida;
     private Integer puntuacion;

    public Servicio() {
    }

	
    public Servicio(int numeroServicio, Cliente cliente, Conductor conductor) {
        this.numeroServicio = numeroServicio;
        this.cliente = cliente;
        this.conductor = conductor;
    }
    public Servicio(int numeroServicio, Cliente cliente, Conductor conductor, Integer costo, String retroalimentacion, String tiempoDuracion, String puntoLlegada, String puntoSalida, Integer puntuacion) {
       this.numeroServicio = numeroServicio;
       this.cliente = cliente;
       this.conductor = conductor;
       this.costo = costo;
       this.retroalimentacion = retroalimentacion;
       this.tiempoDuracion = tiempoDuracion;
       this.puntoLlegada = puntoLlegada;
       this.puntoSalida = puntoSalida;
       this.puntuacion = puntuacion;
    }
   
    public int getNumeroServicio() {
        return this.numeroServicio;
    }
    
    public void setNumeroServicio(int numeroServicio) {
        this.numeroServicio = numeroServicio;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Conductor getConductor() {
        return this.conductor;
    }
    
    public void setConductor(Conductor conductor) {
        this.conductor = conductor;
    }
    public Integer getCosto() {
        return this.costo;
    }
    
    public void setCosto(Integer costo) {
        this.costo = costo;
    }
    public String getRetroalimentacion() {
        return this.retroalimentacion;
    }
    
    public void setRetroalimentacion(String retroalimentacion) {
        this.retroalimentacion = retroalimentacion;
    }
    public String getTiempoDuracion() {
        return this.tiempoDuracion;
    }
    
    public void setTiempoDuracion(String tiempoDuracion) {
        this.tiempoDuracion = tiempoDuracion;
    }
    public String getPuntoLlegada() {
        return this.puntoLlegada;
    }
    
    public void setPuntoLlegada(String puntoLlegada) {
        this.puntoLlegada = puntoLlegada;
    }
    public String getPuntoSalida() {
        return this.puntoSalida;
    }
    
    public void setPuntoSalida(String puntoSalida) {
        this.puntoSalida = puntoSalida;
    }
    public Integer getPuntuacion() {
        return this.puntuacion;
    }
    
    public void setPuntuacion(Integer puntuacion) {
        this.puntuacion = puntuacion;
    }




}


