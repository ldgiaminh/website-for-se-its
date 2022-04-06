/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.NewsDAO;
import group5.seits.dto.NewsDTO;
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
 * @author PC
 */
@WebServlet(name = "NewsServlet", urlPatterns = {"/NewsServlet"})
public class NewsServlet extends HttpServlet{
//        private final String NEWS_PAGE = "News.jsp";
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
//        ServletContext context = request.getServletContext();
//        Properties properties = (Properties)context.getAttribute("SITE_MAP");
//        String url = NEWS_PAGE;
//          HttpSession session = request.getSession();
          
        
        try{
            NewsDAO dao = new NewsDAO();
            NewsDTO hotNews = dao.LoadHotNews();
            request.setAttribute("HOT_NEWS", hotNews);
//            System.out.println(hotNews);

//            dao.LoadHotNews();
//            List<NewsDTO> hotnews = dao.getListNews();
//            request.setAttribute("HOT_NEWS", hotnews);
            
            List<NewsDTO> digitalnews = dao.LoadFourDigitalNews();
            request.setAttribute("FOUR_DIGITAL_NEWS", digitalnews);
            
            List<NewsDTO> digitalAINews = dao.LoadDgitalAndAINews();
            request.setAttribute("DIGITAL_AI_NEW", digitalAINews);
            
            List<NewsDTO> allNews = dao.LoadAllNews();
            request.setAttribute("LIST_NEW",allNews);
//            List<NewsDTO> ainews = dao.LoadAINews();
//            request.setAttribute("AI-NEWS", ainews);
            
            
           RequestDispatcher rd = request.getRequestDispatcher("news.jsp");
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
