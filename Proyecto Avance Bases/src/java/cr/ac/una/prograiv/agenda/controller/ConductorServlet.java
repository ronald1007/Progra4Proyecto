/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.agenda.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.agenda.bl.ConductorBL;
import cr.ac.una.prograiv.agenda.domain.Conductor;
import cr.ac.una.prograiv.agenda.domain.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bryan
 */
public class ConductorServlet extends HttpServlet {

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
           // String json;
            String json;
            //Se crea el objeto Persona
            Conductor p = new Conductor();

            //Se crea el objeto de la logica de negocio
            ConductorBL pBL = new ConductorBL();

            //Se hace una pausa para ver el modal
            Thread.sleep(1000);
            
            
            //**********************************************************************
            //se toman los datos de la session
            //**********************************************************************
            HttpSession session = request.getSession();
            
            //**********************************************************************
            //se consulta cual accion se desea realizar
            //**********************************************************************
            String accion = request.getParameter("accion");
            switch (accion) {
                case "consultarConductor":
                    json = new Gson().toJson(pBL.findAll(Conductor.class.getName()));
                    out.print(json);
                    break;
                case "eliminarConductor":
                    
//                        p.setPkCedula(Integer.parseInt(request.getParameter("idPersona")));
//                    
//                        //Se elimina el objeto
//                        pBL.delete(p);
//
//                        //Se imprime la respuesta con el response
//                        out.print("La persona fue eliminada correctamente");
                 
                    break;
                    
                case "consultarConductorByID":
                    //se consulta la persona por ID
                    p = pBL.findById(Integer.parseInt(request.getParameter("idPersona")));
                    
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(p);
                    out.print(json);
                    break;
                    //-------------------------------------------
                
                case "agregarConductor": case "modificarConductor":

                    p.setCedula(request.getParameter("cedula"));
                    
                    String fechatxt = request.getParameter("fechaNacimiento");
                    DateFormat format = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
                    Date dateF = format.parse(fechatxt);
                    p.setFechaNacimiento(dateF);
                    
                    String FF = request.getParameter("fechaVencimientoLicencia");
                    DateFormat format1 = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
                    Date dateV = format1.parse(FF);
                    p.setFechaVencimientoLicencia(dateV);
                    
                    p.setTipoLicencia(request.getParameter("tipoLicencia"));
                    
                    Vehiculo V1 = new Vehiculo(request.getParameter("vehiculo"));
                    
                    p.setVehiculo(V1);
                  

                    if(accion.equals("agregarConductor")){ //es insertar personas
                        //Se guarda el objeto
                        pBL.save(p);

                        //Se imprime la respuesta con el response
                        out.print("C~La persona fue ingresada correctamente");
                        
                    }else{//es modificar persona
                        //Se guarda el objeto
                        pBL.merge(p);

                        //Se imprime la respuesta con el response
                        out.print("C~La persona fue modificada correctamente");
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
