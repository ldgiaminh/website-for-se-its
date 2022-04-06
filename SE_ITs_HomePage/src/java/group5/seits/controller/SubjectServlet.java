/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.LecturerDAO;
import group5.seits.dao.SubjectDAO;
import group5.seits.dto.LecturerDTO;
import group5.seits.dto.SubjectDTO;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SubjectServlet", urlPatterns = {"/SubjectServlet"})
public class SubjectServlet extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
            
        try {
            SubjectDAO dao = new SubjectDAO();
            
//            List<SubjectDTO> list = dao.LoadAllSubject();
//            request.setAttribute("LIST_SUBJECT", list);
            
            SubjectDTO listSE = dao.LoadSE();
            request.setAttribute("SE", listSE);
            System.out.println(listSE);
            
            SubjectDTO listITS = dao.LoadITs();
            request.setAttribute("ITS", listITS);
            
            LecturerDAO lecturer = new LecturerDAO();
            List<LecturerDTO> listLecturer = lecturer.LoadLecturer();
            request.setAttribute("LECTURER", listLecturer);
            for (LecturerDTO lecturerDTO : listLecturer) {
                System.out.println(lecturerDTO);
            }
            
            
            RequestDispatcher rd = request.getRequestDispatcher("Subject.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            log("SubjectServlet SQLException: " + ex.getMessage());
        } catch (NamingException ex) {
            log("SubjectServlet Naming: " + ex.getMessage());
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
