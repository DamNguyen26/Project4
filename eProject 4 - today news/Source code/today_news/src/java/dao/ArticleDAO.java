/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Article;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vutra
 */
public class ArticleDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Article> getAllArticlenoFeature() {
        List<Article> list = new ArrayList<>();
        String query = "select * from article where feature <> 1 and publish = 1 order by date desc ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getAllArticle() {
        List<Article> list = new ArrayList<>();
        String query = "select * from article order by date desc ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> getArticleByCat(String cid) {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * FROM `article` where id_category = ? and publish = 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Article> searchArticleByName(String text) {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * FROM `article` WHERE title LIKE ? and publish = 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Article getArticleDetailByID(String id) {
        String query = "SELECT * FROM `article` where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Article getFeature() {
        String query = "select * from article where feature = 1 Order By date Desc Limit 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate());
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addArticle(String title, String categoryID, int userID, String thumbnail, String content, String feature, String publish, String publishDate) {

        if (Integer.parseInt(feature) == 1) {
            String query = "UPDATE article SET feature = 0 WHERE feature = 1";
            try {
                conn = new DBContext().getConnection();//mo ket noi voi sql
                ps = conn.prepareStatement(query);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        } else {
            feature = "0";
        }

        String query = "insert into article (title, id_category, id_user, thumbnail, content, feature, publish, date)value(?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, categoryID);
            ps.setInt(3, userID);
            ps.setString(4, thumbnail);
            ps.setString(5, content);
            ps.setString(6, feature);
            ps.setString(7, publish);
            ps.setString(8, publishDate);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }

    public void deleteArticle(String articleID) {
        String query = "delete from article where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, articleID);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }
    
    public void editArticle(String title, String categoryID, int userID, String thumbnail, String content, String feature, String publish, String publishDate, String id) {

        if (Integer.parseInt(feature) == 1) {
            String query = "UPDATE article SET feature = 0 WHERE feature = 1";
            try {
                conn = new DBContext().getConnection();//mo ket noi voi sql
                ps = conn.prepareStatement(query);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        } else {
            feature = "0";
        }

        String query = "UPDATE article SET title=?,id_category=?,id_user=?,thumbnail=?,content=?,feature=?, publish=?,date=? WHERE id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, categoryID);
            ps.setInt(3, userID);
            ps.setString(4, thumbnail);
            ps.setString(5, content);
            ps.setString(6, feature);
            ps.setString(7, publish);
            ps.setString(8, publishDate);
            ps.setString(9, id);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }
    
    public int totalPage() {
        int total = 0;
        String query = "SELECT COUNT(*) FROM article";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 5;
                if (totalA % 5 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }
    
    public List<Article> paging(int index) {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * FROM article where publish = 1 and feature<>1 ORDER by date desc LIMIT 5 OFFSET ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1)*5);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Article> pagingManager(int index) {
        List<Article> list = new ArrayList<>();
        String query = "SELECT * FROM article ORDER by date desc LIMIT 5 OFFSET ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1)*5);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Article(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDate(10).toLocalDate()
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<String> getPopularArticleId() {
        List<String> list = new ArrayList<>();
        String query = "SELECT id_article from (select id_article, count(1)from `comment` group by id_article order by count(1) desc LIMIT 5) idlist";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1)
                        );
            }
        } catch (Exception e) {
        }
        return list;
    }

//        public static void main(String[] args) {
//        ArticleDAO dao = new ArticleDAO();
//        System.out.println(dao.getPopularArticleId());
//
//    }
}
