/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.agenda.bl.VehiculoBL;
import cr.ac.una.prograiv.agenda.domain.Conductor;
import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bryan
 */
public class VehiculoServlet extends HttpServlet {

    
    
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            //String para guardar el JSON generaro por al libreria GSON
            String json;
            
            //Se crea el objeto Persona
            Vehiculo p = new Vehiculo();

            //Se crea el objeto de la logica de negocio
           VehiculoBL pBL = new VehiculoBL();

            //Se hace una pausa para ver el modal
            Thread.sleep(1000);
            
            System.out.println("Entrando al servlet");
            
            //**********************************************************************
            //se toman los datos de la session
            //**********************************************************************
            HttpSession session = request.getSession();
            
            //**********************************************************************
            //se consulta cual accion se desea realizar
            //**********************************************************************
            String accion = request.getParameter("accion");
           
            switch (accion) {
                
                case "consultarVehiculo":
                    System.out.println("Cons");
                    json = new Gson().toJson(pBL.findAll(Vehiculo.class.getName()));
                    out.print(json);
                    break;
                case "eliminarVehiculo":
                    p.setIdVehiculo(request.getParameter("idVehiculo"));
                      //  p.setPkCedula(Integer.parseInt(request.getParameter("idPersona")));
                      
                        //Se elimina el objeto
                        pBL.delete(p);

                        //Se imprime la respuesta con el response
                        out.print("La persona fue eliminada correctamente");
                 
                    break;
                    
                case "consultarVehiculoByID":
                    //se consulta la Carro por placa
                    //p = pBL.findById(Integer.parseInt(request.getParameter("idPersona")));
                    
                    System.out.println("Consultando vehiculo por id");
                    p = pBL.findById(Integer.parseInt(request.getParameter("idVehiculo")));
                    //se pasa la informacion del objeto a formato JSON
                    System.out.println(p.getPlaca());
                    System.out.println(p.getModelo());
                    json = new Gson().toJson(p);
                    System.out.println("Se parseo bien");
                    out.print(json);
                    break;
                    //-------------------------------------------
                
                case "agregarVehiculo": case "modificarVehiculo":
                    
                    p.setIdVehiculo(request.getParameter("idVehiculo"));
                    p.setUbicacionActual(request.getParameter("ubicacionActual"));
                    p.setAno(Integer.parseInt(request.getParameter("ano")));
                    p.setModelo(request.getParameter("modelo"));
                    p.setPlaca(Integer.parseInt(request.getParameter("placa")));
                    p.setColor(request.getParameter("color"));
                    p.setEstado(Boolean.parseBoolean("estado"));
                    
                     
                    //Vehiculo p15 = new Vehiculo("1234","Heredia",2010,"BMW",12345,"Verde",true,null);
                      
                 //  p.setConductors(null);
                
                 

                    if(accion.equals("agregarVehiculo")){ //es insertar personas
                        //Se guarda el objeto
                       
                        pBL.save(p);
    
                        //Se imprime la respuesta con el response
                        out.print("C~El vehiculo fue ingresado correctamente");
                        
                    }else{//es modificar persona
                        //Se guarda el objeto
                        pBL.merge(p);

                        //Se imprime la respuesta con el response
                        out.print("C~El vehiculo fue modificado correctamente");
                    }
                    
                    break;
                    
                default:
                    out.print("E~No se indico la acción que se desea realizare");
                    break;
            }

        } catch (NumberFormatException e) {
            out.print("E~" + e.getMessage());
        } catch (Exception e) {
            out.print("E~" + e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}





