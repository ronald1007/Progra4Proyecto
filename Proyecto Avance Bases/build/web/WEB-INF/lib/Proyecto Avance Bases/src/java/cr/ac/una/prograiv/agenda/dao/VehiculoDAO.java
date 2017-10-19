/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.dao;

import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import cr.ac.una.prograiv.agenda.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author chgari
 */
public class VehiculoDAO extends HibernateUtil implements IBaseDAO<Vehiculo, Integer>{

    @Override
    public void save(Vehiculo o) {
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
    public Vehiculo merge(Vehiculo o) {
        try {
            iniciaOperacion();
            o = (Vehiculo) getSesion().merge(o);
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
    public void delete(Vehiculo o) {
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
    public Vehiculo findById(Integer id) {
        Vehiculo direcciones = null;

        try {
            iniciaOperacion();
            direcciones = (Vehiculo) getSesion().get(Vehiculo.class, id);
        } finally {
            getSesion().close();
        }
        return direcciones;
    }

    @Override
    public List<Vehiculo> findAll() {
        List<Vehiculo> listaVehiculo;
        try {
            iniciaOperacion();
            listaVehiculo = getSesion().createQuery("from Vehiculo").list();
        } finally {
            getSesion().close();
        }

        return listaVehiculo;
    }

//    @Override
//    public Vehiculo findByNombre(String o) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
