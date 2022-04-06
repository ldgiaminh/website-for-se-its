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
public class BookDTO {
    private String id;
    private String name;
    private String image;
    private String author;
    private String url;
    private String createdDate;
    private String subjectId;

    public BookDTO(String id, String name, String image, String author, String url, String createdDate, String subjectId) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.author = author;
        this.url = url;
        this.createdDate = createdDate;
        this.subjectId = subjectId;
    }

    public BookDTO() {
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the createdDate
     */
    public String getCreatedDate() {
        return createdDate;
    }

    /**
     * @param createdDate the createdDate to set
     */
    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    /**
     * @return the subjectId
     */
    public String getSubjectId() {
        return subjectId;
    }

    /**
     * @param subjectId the subjectId to set
     */
    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public String toString() {
        return "BookDTO{" + "id=" + id + ", name=" + name + ", image=" + image + ", author=" + author + ", url=" + url + ", createdDate=" + createdDate + ", subjectId=" + subjectId + '}';
    }
    
}
