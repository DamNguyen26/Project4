/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vutra
 */
public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public User login(String user, String pass) {
        String query = "select * from user_web where username = ? AND password = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String accountName(String user) {
        String query = "select username from user_web where username = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signUp(String user, String pass) {
        String query = "insert into user_web (username, password, role)value(?,?,3)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String query = "select * from user_web";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String commentUser(String username) {
        String query = "insert into user_web (username, role)value(?,3);";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, username);
            ps.executeUpdate();

            rs = ps.getGeneratedKeys();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
             e.printStackTrace();
        }

        return null;
    }

//    public static void main(String[] args) {
//        UserDAO dao = new UserDAO();
//        System.out.println(dao.commentUser("aaaaaa"));
//
//    }
}
