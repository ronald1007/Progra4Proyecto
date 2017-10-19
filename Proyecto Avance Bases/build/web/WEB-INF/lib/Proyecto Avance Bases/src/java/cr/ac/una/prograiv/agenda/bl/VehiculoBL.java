/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.bl;

import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import java.util.List;

/**
 *
 * @author chgari
 */
public class VehiculoBL extends BaseBL implements IBaseBL<Vehiculo, Integer>{
    public VehiculoBL() {
        super();
    }
    
    @Override
    public void save(Vehiculo o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Vehiculo merge(Vehiculo o) {
        return (Vehiculo) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Vehiculo o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Vehiculo findById(Integer o) {
        return (Vehiculo) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Vehiculo> findAll(String className) {
        return this.getDao(className).findAll();
    }


    
}
