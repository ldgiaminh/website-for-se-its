/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dto;

/**
 *
 * @author PC
 */
public class NewsDTO {
    private String id;
    private String image;
    private String title;
    private String des;
    private String url;
    private String createdDate;
    private String cateNewsId;

    public NewsDTO() {
    }

    public NewsDTO(String id, String image, String title, String des, String url, String createdDate, String cateNewsId) {
        this.id = id;
        this.image = image;
        this.title = title;
        this.des = des;
        this.url = url;
        this.createdDate = createdDate;
        this.cateNewsId = cateNewsId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getCateNewsId() {
        return cateNewsId;
    }

    public void setCateNewsId(String cateNewsId) {
        this.cateNewsId = cateNewsId;
    }

    @Override
    public String toString() {
        return "NewsDTO{" + "id=" + id + ", image=" + image + ", title=" + title + ", des=" + des + ", url=" + url + ", createdDate=" + createdDate + ", cateNewsId=" + cateNewsId + '}';
    }
    
    
}
