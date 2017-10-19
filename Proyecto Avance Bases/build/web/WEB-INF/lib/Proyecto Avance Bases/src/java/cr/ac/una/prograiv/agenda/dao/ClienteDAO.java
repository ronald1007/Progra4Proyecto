/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.dao;

import cr.ac.una.prograiv.agenda.domain.Cliente;
import cr.ac.una.prograiv.agenda.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author chgari
 */
public class ClienteDAO extends HibernateUtil implements IBaseDAO<Cliente, Integer>{

    @Override
    public void save(Cliente o) {
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
    public Cliente merge(Cliente o) {
        try {
            iniciaOperacion();
            o = (Cliente) getSesion().merge(o);
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
    public void delete(Cliente o) {
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
    public Cliente findById(Integer id) {
        Cliente direcciones = null;

        try {
            iniciaOperacion();
            direcciones = (Cliente) getSesion().get(Cliente.class, id);
        } finally {
            getSesion().close();
        }
        return direcciones;
    }

    @Override
    public List<Cliente> findAll() {
        List<Cliente> listaCliente;
        try {
            iniciaOperacion();
            listaCliente = getSesion().createQuery("from Cliente").list();
        } finally {
            getSesion().close();
        }

        return listaCliente;
    }

//    @Override
//    public Cliente findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
