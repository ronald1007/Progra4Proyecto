/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.bl;

import cr.ac.una.prograiv.agenda.domain.Cliente;
import java.util.List;

/**
 *
 * @author chgari
 */
public class ClienteBL extends BaseBL implements IBaseBL<Cliente, Integer>{
    public ClienteBL() {
        super();
    }
    
    @Override
    public void save(Cliente o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Cliente merge(Cliente o) {
        return (Cliente) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Cliente o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Cliente findById(Integer o) {
        return (Cliente) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Cliente> findAll(String className) {
        return this.getDao(className).findAll();
    }

  

//    @Override
//    public Cliente findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
