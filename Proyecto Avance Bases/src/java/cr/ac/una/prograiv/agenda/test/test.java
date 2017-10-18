/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.test;

import cr.ac.una.prograiv.agenda.bl.ClienteBL;
import cr.ac.una.prograiv.agenda.bl.ConductorBL;

import cr.ac.una.prograiv.agenda.bl.ServicioBL;

import cr.ac.una.prograiv.agenda.bl.UsuarioBL;
import cr.ac.una.prograiv.agenda.bl.VehiculoBL;
import cr.ac.una.prograiv.agenda.domain.Cliente;
import cr.ac.una.prograiv.agenda.domain.Conductor;

import cr.ac.una.prograiv.agenda.domain.Servicio;

import cr.ac.una.prograiv.agenda.domain.Usuario;
import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import java.util.Date;

/**
 *
 * @author Bryan
 */
public class test {

    /**
     * @param args the command line arguments
     * 
     
     * 
     
     */
    public static void main(String[] args) {
    
        
         VehiculoBL blCL5 = new VehiculoBL();
      
        Vehiculo p15 = new Vehiculo("1234","Heredia",2010,"BMW",12345,"Verde",true);//,null);
      
        blCL5.merge(p15);
        
        
        
        ConductorBL blCL = new ConductorBL();               //***************************************************
      
       Conductor p1 = new Conductor("12333",p15,new Date(),new Date(),"A1",null);
        blCL.merge(p1);
        
         UsuarioBL blCL4 = new UsuarioBL();
        Usuario p14 = new Usuario("001","HOLA",1,null);
        blCL4.merge(p14);
        
        UsuarioBL blCL444 = new UsuarioBL();
        Usuario p1444 = new Usuario("002","HOLA",1,null);
        blCL444.merge(p1444);
        
         UsuarioBL blCLA = new UsuarioBL();
        Usuario pA = new Usuario("003","Adios",1,null);
        blCLA.merge(pA);
        
      
        ClienteBL blcA = new ClienteBL();
        Cliente p16A = new Cliente("HOla@gmail.com",p14,"Ronald","Jot","Whi",new Date(),"Puerto","8881238",null);
        blcA.merge(p16A);
       
        ClienteBL blcAA = new ClienteBL();
        Cliente p16AA = new Cliente("kk@gmail.com",p14,"Roger","We","Ka",new Date(),"He","42232",null);
        blcAA.merge(p16AA);
       
          ClienteBL blc666 = new ClienteBL();
        Cliente p167 = new Cliente("loa@gmail.com",p1444,"Jorg","Rai","Ronald",new Date(),"Heredia","899919",null);
        blc666.merge(p167);
       
         ClienteBL blc6667 = new ClienteBL();
        Cliente p1677 = new Cliente("RR@gmail.com",pA,"Roger","Jua","As",new Date(),"San Jose","9992929",null);
        blc6667.merge(p1677);
       
        ServicioBL blCL2 = new ServicioBL();
        Servicio p12 = new Servicio(1,p16A,p1,1000,"Bien","3","HEREDIA","ALAJUELA",5);
        blCL2.merge(p12);
        

      
    }
    
}
