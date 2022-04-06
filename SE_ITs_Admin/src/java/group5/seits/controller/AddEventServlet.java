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
 * @author PC
 */
@WebServlet(name = "AddEventServlet", urlPatterns = {"/AddEventServlet"})
public class AddEventServlet extends HttpServlet {

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
        try {
            HttpSession session = request.getSession(false);
            if(session == null){
                response.sendRedirect("login.jsp");
                return;
            }
            String eid = request.getParameter("eventId");
            String etitle = request.getParameter("eventTitle");
            String eimage = request.getParameter("eventImage");
            String edes = request.getParameter("eventDes");
            String econtent = request.getParameter("eventContent");
            String edate = request.getParameter("eventDate");
            String equotes = request.getParameter("eventQuotes");
            String ecategory = request.getParameter("categoryEventId");
            
            EventsDAO dao = new EventsDAO();
            dao.addEvent(eid, etitle, eimage, edes, econtent, edate, equotes, ecategory);
        }
        catch (SQLException ex) {
            log("AddEventServlet SQL: " + ex.getMessage());
        }
        catch (NamingException ex){
            log("AddEventServlet Naming: " + ex.getMessage());
        }
        finally{
            response.sendRedirect("events");
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
