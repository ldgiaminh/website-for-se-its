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
public class LecturerDTO {
    private String id;
    private String name;
    private String img;
    private String des;
    private String createddate;
    private String quotes;  
    private String subjectId;

    public LecturerDTO(String id, String name, String img, String des, String createddate, String quotes,  String subjectId) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.des = des;
        this.createddate = createddate;
        this.quotes = quotes;       
        this.subjectId = subjectId;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getCreateddate() {
        return createddate;
    }

    public void setCreateddate(String createddate) {
        this.createddate = createddate;
    }

    public String getQuotes() {
        return quotes;
    }

    public void setQuotes(String quotes) {
        this.quotes = quotes;
    }

    

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public String toString() {
        return "LecturerDTO{" + "id=" + id + ", name=" + name + ", img=" + img + ", des=" + des + ", createddate=" + createddate + ", quotes=" + quotes + ", subjectId=" + subjectId + '}';
    }

   
}
