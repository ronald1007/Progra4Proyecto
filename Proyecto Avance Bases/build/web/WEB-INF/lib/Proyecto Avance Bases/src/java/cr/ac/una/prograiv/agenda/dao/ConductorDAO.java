/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.dao;

import cr.ac.una.prograiv.agenda.domain.Conductor;
import cr.ac.una.prograiv.agenda.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author chgari
 */
public class ConductorDAO extends HibernateUtil implements IBaseDAO<Conductor, Integer>{

    @Override
    public void save(Conductor o) {
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
    public Conductor merge(Conductor o) {
        try {
            iniciaOperacion();
            o = (Conductor) getSesion().merge(o);
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
    public void delete(Conductor o) {
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
    public Conductor findById(Integer id) {
        Conductor direcciones = null;

        try {
            iniciaOperacion();
            direcciones = (Conductor) getSesion().get(Conductor.class, id);
        } finally {
            getSesion().close();
        }
        return direcciones;
    }

    @Override
    public List<Conductor> findAll() {
        List<Conductor> listaConductor;
        try {
            iniciaOperacion();
            listaConductor = getSesion().createQuery("from Conductor").list();
        } finally {
            getSesion().close();
        }

        return listaConductor;
    }

//    @Override
//    public Conductor findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
