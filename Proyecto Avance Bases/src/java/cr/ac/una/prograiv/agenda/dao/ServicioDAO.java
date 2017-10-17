/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.dao;

import cr.ac.una.prograiv.agenda.domain.Servicio;
import cr.ac.una.prograiv.agenda.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author chgari
 */
public class ServicioDAO extends HibernateUtil implements IBaseDAO<Servicio, Integer>{

    @Override
    public void save(Servicio o) {
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
    public Servicio merge(Servicio o) {
        try {
            iniciaOperacion();
            o = (Servicio) getSesion().merge(o);
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
    public void delete(Servicio o) {
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
    public Servicio findById(Integer id) {
        Servicio direcciones = null;

        try {
            iniciaOperacion();
            direcciones = (Servicio) getSesion().get(Servicio.class, id);
        } finally {
            getSesion().close();
        }
        return direcciones;
    }

    @Override
    public List<Servicio> findAll() {
        List<Servicio> listaServicio;
        try {
            iniciaOperacion();
            listaServicio = getSesion().createQuery("from Servicio").list();
        } finally {
            getSesion().close();
        }

        return listaServicio;
    }

//    @Override
//    public Servicio findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
