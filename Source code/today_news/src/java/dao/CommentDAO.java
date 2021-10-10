/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Comment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vutra
 */
public class CommentDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Comment> getCommentByArticleId(String articleId) {
        List<Comment> list = new ArrayList<>();
        String query = "select * from comment where id_article=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, articleId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Comment> getAllComments() {
        List<Comment> list = new ArrayList<>();
        String query = "select * from comment";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void addCComment (String articleId, String userId, String content){
        String query ="insert into comment (id_article, user_id, content)value(?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, articleId);
            ps.setString(2, userId);
            ps.setString(3, content);
            ps.executeUpdate();
            
        }catch (Exception e){
            
        }
    }
    
    public void deleteComment (String commentId){
        String query ="delete from comment where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, commentId);
            ps.executeUpdate();
            
        }catch (Exception e){
            
        }
    }
    
    
}
