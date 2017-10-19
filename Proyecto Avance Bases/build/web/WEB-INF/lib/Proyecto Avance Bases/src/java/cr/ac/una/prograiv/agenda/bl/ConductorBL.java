/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.bl;

import cr.ac.una.prograiv.agenda.domain.Conductor;
import java.util.List;

/**
 *
 * @author chgari
 */
public class ConductorBL extends BaseBL implements IBaseBL<Conductor, Integer>{
    public ConductorBL() {
        super();
    }
    
    @Override
    public void save(Conductor o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Conductor merge(Conductor o) {
        return (Conductor) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Conductor o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Conductor findById(Integer o) {
        return (Conductor) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Conductor> findAll(String className) {
        return this.getDao(className).findAll();
    }

  

//    @Override
//    public Conductor findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
