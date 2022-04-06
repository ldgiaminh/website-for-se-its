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
public class SubjectDTO {
    private String id;
    private String title;
    private String name;
    private String des;
    private String image;
    private String createdDate;
    private String cateSubjId;

    public SubjectDTO() {
    }

    public SubjectDTO(String id, String name, String title, String des, String image, String createdDate, String cateSubjId) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.des = des;
        this.image = image;
        this.createdDate = createdDate;
        this.cateSubjId = cateSubjId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getCateSubjId() {
        return cateSubjId;
    }

    public void setCateSubjId(String cateSubjId) {
        this.cateSubjId = cateSubjId;
    }

    @Override
    public String toString() {
        return "SubjectDTO{" + "id=" + id + ", title=" + title + ", name=" + name + ", des=" + des + ", image=" + image + ", createdDate=" + createdDate + ", cateSubjId=" + cateSubjId + '}';
    }

    
    
}
