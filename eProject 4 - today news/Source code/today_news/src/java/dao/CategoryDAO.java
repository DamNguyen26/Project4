/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vutra
 */
public class CategoryDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public String getCategoryName(String id) {
        String query = "select category_name from category where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void addCategory (String categoryName){
        String query ="insert into category (category_name)value(?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryName);
            ps.executeUpdate();
            
        }catch (Exception e){
            
        }
    }
    
    public void updateCategory (String categoryName, String categoryID){
        String query ="UPDATE category SET category_name=? WHERE id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryName);
            ps.setString(2, categoryID);
            ps.executeUpdate();
            
        }catch (Exception e){
            
        }
    }
    
    public void deleteCategory (String categoryID){
        String query ="delete from category where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            ps.executeUpdate();
            
        }catch (Exception e){
            
        }
    }
    
    
//    public static void main(String[] args) {
//        CategoryDAO dao = new CategoryDAO();
//        List<Category> list = dao.getAllCategory();
//        
//    }
}
