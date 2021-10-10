/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ArticleDAO;
import dao.CategoryDAO;
import entity.Article;
import entity.Category;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vutra
 */
@WebServlet(name = "EditArticle", urlPatterns = {"/editArticle"})
public class EditArticle extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String id = request.getParameter("id");
        ArticleDAO daoA = new ArticleDAO();
        Article content = daoA.getArticleDetailByID(id);
        
        CategoryDAO dao = new CategoryDAO();
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("listC", listC);
        request.setAttribute("detail", content);
        request.getRequestDispatcher("EditArticle.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("acc");
        int userID = user.getId();
        
        
        String title = request.getParameter("title");
        String thumbnail = request.getParameter("thumbnail");
        String content = request.getParameter("content");
        String feature = request.getParameter("feature");
        String publish = request.getParameter("publish");
        String date = request.getParameter("publish_date");  
        String category = request.getParameter("category");
        String id = request.getParameter("id");
        
        if (feature == null){
            feature = "0";
        }
        
        if (publish == null){
            publish = "0";
        }
        if (date == null){
            date = LocalDateTime.now().toString();
        }
        
        ArticleDAO a = new ArticleDAO();
        a.editArticle(title, category, userID, thumbnail, content, feature, publish, date, id);
        response.sendRedirect("manager");
        
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
