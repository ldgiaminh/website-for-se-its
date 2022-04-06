/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.controller;

import group5.seits.dao.AdminDAO;
import group5.seits.dto.AdminDTO;
import group5.seits.utils.GooglePojo;
import group5.seits.utils.GoogleUtils;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public static final String AdminPage = "user.jsp";
    
      public LoginGoogleServlet() {
        super();
    }
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
        HttpSession session = request.getSession(true);
        String url = AdminPage;
        
        
        String code = request.getParameter("code");
    
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            System.out.println("You don't have permission to sign in this website");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            request.setAttribute("id", googlePojo.getId());
            //request.setAttribute("name", googlePojo.getName());
            request.setAttribute("email", googlePojo.getEmail());
            RequestDispatcher dis = request.getRequestDispatcher("user.jsp");
            dis.forward(request, response);
            try{
                AdminDAO dao = new AdminDAO();
                
                AdminDTO admin = dao.checkLogin(request.getAttribute("id").toString(), request.getAttribute("mail").toString());
                if(admin != null){
                    session.setAttribute("Admin", admin);
                    url = AdminPage;
                }
            }
            catch(Exception e){
                log("Error: " + e.toString());
            }
            finally{
                response.sendRedirect(url);
            }
                    
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
