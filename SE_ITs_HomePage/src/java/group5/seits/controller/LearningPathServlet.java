/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.LearningPathDAO;
import group5.seits.dto.CareerDTO;
import group5.seits.dto.SkillDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
@WebServlet(name = "LearningPathServlet", urlPatterns = {"/LearningPathServlet"})
public class LearningPathServlet extends HttpServlet {

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
        ServletContext context = request.getServletContext();
        HttpSession session = request.getSession();
        try{
            LearningPathDAO dao = new LearningPathDAO();
            SkillDTO skillSE = dao.loadSkillSE();
            request.setAttribute("SKILL_SE", skillSE);
            
            SkillDTO skillITs = dao.loadSkillITs();
            request.setAttribute("SKILL_ITS", skillITs);
            
            CareerDTO careerSE = dao.loadCareerSE();
            request.setAttribute("CAREER_SE", careerSE);
            
            CareerDTO careerITs = dao.loadCareerSE();
            request.setAttribute("CAREER_ITS", careerITs);
            
            RequestDispatcher rd = request.getRequestDispatcher("LearningPath.jsp");
            rd.forward(request, response);    
        }
        catch(SQLException ex){
            log("ShowBookServlet_SQL: " + ex.getMessage());
        }
        catch(NamingException ex){
            log("ShowBookServlet_Naming:" + ex.getMessage());
        }
        finally{
            
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
