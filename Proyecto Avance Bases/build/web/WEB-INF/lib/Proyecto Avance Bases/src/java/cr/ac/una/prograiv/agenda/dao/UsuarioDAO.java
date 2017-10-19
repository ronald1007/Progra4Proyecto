/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.dao;

import cr.ac.una.prograiv.agenda.domain.Usuario;
import cr.ac.una.prograiv.agenda.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author chgari
 */
public class UsuarioDAO extends HibernateUtil implements IBaseDAO<Usuario, Integer>{

    @Override
    public void save(Usuario o) {
           try {
            iniciaOperacion();
            getSesion().save(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
    }

    @Override
    public Usuario merge(Usuario o) {
        try {
            iniciaOperacion();
            o = (Usuario) getSesion().merge(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
        return o;
    }

    @Override
    public void delete(Usuario o) {
        try {
            iniciaOperacion();
            getSesion().delete(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
    }

    @Override
    public Usuario findById(Integer id) {
        Usuario direcciones = null;

        try {
            iniciaOperacion();
            direcciones = (Usuario) getSesion().get(Usuario.class, id);
        } finally {
            getSesion().close();
        }
        return direcciones;
    }

    @Override
    public List<Usuario> findAll() {
        List<Usuario> listaUsuario;
        try {
            iniciaOperacion();
            listaUsuario = getSesion().createQuery("from Usuario").list();
        } finally {
            getSesion().close();
        }

        return listaUsuario;
    }

//    @Override
//    public Usuario findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
