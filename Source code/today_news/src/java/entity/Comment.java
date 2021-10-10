/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author vutra
 */
public class Comment {
    private int id;
    private int articleId;
    private int userId;
    private String commentContent;

    public Comment() {
    }

    public Comment(int id, int articleId, int userId, String commentContent) {
        this.id = id;
        this.articleId = articleId;
        this.userId = userId;
        this.commentContent = commentContent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }
    
    
    
}
