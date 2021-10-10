/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
import java.time.LocalDate;

/**
 *
 * @author vutra
 */
public class Article {
    private int id;
    private String title;
    private String categoryId;
    private String thumbnail;
    private String content;
    private int feature;
    private String featureImage;
    private int publish;
    private LocalDate publishdate;

    public Article() {
    }

    public Article(int id, String title, String categoryId, String thumbnail, String content, int feature, String featureImage, int publish, LocalDate publishdate) {
        this.id = id;
        this.title = title;
        this.categoryId = categoryId;
        this.thumbnail = thumbnail;
        this.content = content;
        this.feature = feature;
        this.featureImage = featureImage;
        this.publish = publish;
        this.publishdate = publishdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getFeature() {
        return feature;
    }

    public void setFeature(int feature) {
        this.feature = feature;
    }

    public String getFeatureImage() {
        return featureImage;
    }

    public void setFeatureImage(String featureImage) {
        this.featureImage = featureImage;
    }

    public int getPublish() {
        return publish;
    }

    public void setPublish(int publish) {
        this.publish = publish;
    }

    public LocalDate getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(LocalDate publishdate) {
        this.publishdate = publishdate;
    }

    
    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", title=" + title + ", thumbnail=" + thumbnail + ", content=" + content + ", feature=" + feature + ", featureImage=" + featureImage + ", publish=" + publish + ", publishdate=" + publishdate + '}';
    }

   
    
}
