/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dto;

/**
 *
 * @author ADMIN
 */
public class EventsDTO {
    private String id;
    private String title;
    private String image;
    private String des;
    private String content;
    private String createdDate;
    private String qoutes;
    private String cateEventId;

    public EventsDTO() {
    }

    public EventsDTO(String id, String title, String image, String des, String content, String createdDate, String qoutes, String cateEventId) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.des = des;
        this.content = content;
        this.createdDate = createdDate;
        this.qoutes = qoutes;
        this.cateEventId = cateEventId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getQoutes() {
        return qoutes;
    }

    public void setQoutes(String qoutes) {
        this.qoutes = qoutes;
    }

    public String getCateEventId() {
        return cateEventId;
    }

    public void setCateEventId(String cateEventId) {
        this.cateEventId = cateEventId;
    }

    @Override
    public String toString() {
        return "EventsDTO{" + "id=" + id + ", title=" + title + ", image=" + image + ", des=" + des + ", content=" + content + ", createdDate=" + createdDate + ", qoutes=" + qoutes + ", cateEventId=" + cateEventId + '}';
    }

    
    
}
