/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;
import group5.seits.dao.EventsCategoryDAO;
import group5.seits.dao.EventsDAO;
import group5.seits.dto.EventsCategoryDTO;
import group5.seits.dto.EventsDTO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "EventsServlet", urlPatterns = {"/events"})
public class EventsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
            EventsDAO dao = new EventsDAO();
            EventsDTO dto = dao.LoadHotEvents();
            request.setAttribute("HOT_EVENTS", dto);
            
            List<EventsDTO> listBigEvent = dao.LoadBigEvent();
            request.setAttribute("BIG_EVENTS", listBigEvent);
            
            List<EventsDTO> listNormalEvens = dao.LoadNormalEvent();
            request.setAttribute("NORMAL_EVENTS", listNormalEvens);
            
            EventsCategoryDAO dao1 = new EventsCategoryDAO();
            List<EventsCategoryDTO> listCate = dao1.loadAllEventsCategory();
            request.setAttribute("LIST_CATE_EVENTS", listCate);
            
           RequestDispatcher rd = request.getRequestDispatcher("Events.jsp");
           rd.forward(request, response);
        }
        catch(SQLException ex){
            log("ShowBookServlet_SQL: " + ex.getMessage());
        }
        catch(NamingException ex){
            log("ShowBookServlet_Naming:" + ex.getMessage());
        }
        finally {
                  
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
