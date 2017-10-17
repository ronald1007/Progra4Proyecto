/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.bl;

import cr.ac.una.prograiv.agenda.domain.Usuario;
import java.util.List;

/**
 *
 * @author chgari
 */
public class UsuarioBL extends BaseBL implements IBaseBL<Usuario, Integer>{
    public UsuarioBL() {
        super();
    }
    
    @Override
    public void save(Usuario o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Usuario merge(Usuario o) {
        return (Usuario) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Usuario o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Usuario findById(Integer o) {
        return (Usuario) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Usuario> findAll(String className) {
        return this.getDao(className).findAll();
    }

  

//    @Override
//    public Usuario findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
