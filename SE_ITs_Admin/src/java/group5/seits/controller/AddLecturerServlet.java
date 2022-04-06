/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.LecturerDAO;
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
@WebServlet(name = "AddLecturerServlet", urlPatterns = {"/AddLecturerServlet"})
public class AddLecturerServlet extends HttpServlet {

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
            String lecid = request.getParameter("lecturerId");
            String lecname = request.getParameter("lecturerName");
            String lecimage = request.getParameter("lecturerImage");
            String lecdes = request.getParameter("lecturerDes");
            String lecdate = request.getParameter("lecturerDate");
            String lecquotes = request.getParameter("lecturerQuotes");
            String categorySubId = request.getParameter("categorySubjectId");
            
            LecturerDAO dao = new LecturerDAO();
            dao.addLecturer(lecid, lecname, lecimage, lecdes, lecdate, lecquotes, categorySubId);

        }
        catch (SQLException ex) {
            log("AddLecturerServlet SQL: " + ex.getMessage());
        }
        catch (NamingException ex){
            log("AddLecturerServlet Naming: " + ex.getMessage());
        }
        finally {
            response.sendRedirect("LecturerServlet");
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
