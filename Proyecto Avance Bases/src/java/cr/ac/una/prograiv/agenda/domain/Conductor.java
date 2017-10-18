package cr.ac.una.prograiv.agenda.domain;
// Generated Oct 14, 2017 2:47:06 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Conductor generated by hbm2java
 */
public class Conductor  implements java.io.Serializable {


     private String cedula;
     private Vehiculo vehiculo;
     private Date fechaNacimiento;
     private Date fechaVencimientoLicencia;
     private String tipoLicencia;
     private Set<Servicio> servicios = new HashSet<Servicio>(0);

    public Conductor() {
    }

	
    public Conductor(String cedula, Vehiculo vehiculo) {
        this.cedula = cedula;
        this.vehiculo = vehiculo;
    }
    public Conductor(String cedula, Vehiculo vehiculo, Date fechaNacimiento, Date fechaVencimientoLicencia, String tipoLicencia, Set<Servicio> servicios) {
       this.cedula = cedula;
       this.vehiculo = vehiculo;
       this.fechaNacimiento = fechaNacimiento;
       this.fechaVencimientoLicencia = fechaVencimientoLicencia;
       this.tipoLicencia = tipoLicencia;
       this.servicios = servicios;
    }
   
    public String getCedula() {
        return this.cedula;
    }
    
    public void setCedula(String cedula) {
        this.cedula = cedula;
    }
    public Vehiculo getVehiculo() {
        return this.vehiculo;
    }
    
    public void setVehiculo(Vehiculo vehiculo) {
        this.vehiculo = vehiculo;
    }
    public Date getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    public Date getFechaVencimientoLicencia() {
        return this.fechaVencimientoLicencia;
    }
    
    public void setFechaVencimientoLicencia(Date fechaVencimientoLicencia) {
        this.fechaVencimientoLicencia = fechaVencimientoLicencia;
    }
    public String getTipoLicencia() {
        return this.tipoLicencia;
    }
    
    public void setTipoLicencia(String tipoLicencia) {
        this.tipoLicencia = tipoLicencia;
    }
    public Set<Servicio> getServicios() {
        return this.servicios;
    }
    
    public void setServicios(Set<Servicio> servicios) {
        this.servicios = servicios;
    }




}


