/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.EventsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "EditEventsServlet", urlPatterns = {"/editEvents"})
public class EditEventsServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        
        String url = "editEvents.jsp";
        
        try {
            HttpSession session = request.getSession(false);
            if(session == null){
                response.sendRedirect("login.jsp");
                return;
            }
            String eid = request.getParameter("eid");
            String etitle = request.getParameter("etitle");
            String eimage = request.getParameter("eimage");
            String eqoutes = request.getParameter("eqoutes");
            String ecreatedDate = request.getParameter("ecreatedDate");
            String edes = request.getParameter("edes");
            String econtent = request.getParameter("econtent");
            String ecateEventId = request.getParameter("category");
            EventsDAO dao = new EventsDAO();
            dao.updateEvents(eid, etitle, eimage, edes, econtent, 
                    ecreatedDate, eqoutes, ecateEventId);
            url = "events";
            
        } catch (SQLException ex) {
            log("EditEventsServlet SQL: " + ex.getMessage());
        } catch (NamingException ex) {
            log("EditEventsServlet Naming: " + ex.getMessage());
        } finally {
            response.sendRedirect(url);
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
