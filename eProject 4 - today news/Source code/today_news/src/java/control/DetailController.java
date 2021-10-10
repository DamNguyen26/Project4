/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ArticleDAO;
import dao.CategoryDAO;
import dao.CommentDAO;
import dao.UserDAO;
import entity.Article;
import entity.Category;
import entity.Comment;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vutra
 */
@WebServlet(name = "detail", urlPatterns = {"/detail"})
public class DetailController extends HttpServlet {

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
        
        String id = request.getParameter("id");
        
        ArticleDAO daoA = new ArticleDAO();
        Article content = daoA.getArticleDetailByID(id);
        
        CategoryDAO dao = new CategoryDAO();
        List<Category> listC = dao.getAllCategory();
        
        UserDAO daoU = new UserDAO();
        List<User> listU = daoU.getAllUser();
        
        
        CommentDAO comment = new CommentDAO();
        List<Comment> list = comment.getCommentByArticleId(id);
        List<String> listPopArticleID = daoA.getPopularArticleId();
        List<Article> listAllArticle = daoA.getAllArticlenoFeature();
        
        request.setAttribute("listAllArticle", listAllArticle);
        request.setAttribute("listPopArticleID", listPopArticleID);
        request.setAttribute("listComment", list);
        request.setAttribute("listU", listU);
        request.setAttribute("listC", listC);        
        request.setAttribute("detail", content);
        request.getRequestDispatcher("Detail.jsp").forward(request, response);
        
        
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
