/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dto;

import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class CategoryBookDTO implements Serializable{
    private String id;
    private String name;
    private String subjectId;

    public CategoryBookDTO() {
    }

    public CategoryBookDTO(String id, String name, String subjectId) {
        this.id = id;
        this.name = name;
        this.subjectId = subjectId;
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
        return "CategoryBookDTO{" + "id=" + id + ", name=" + name + ", subjectId=" + subjectId + '}';
    }
    
}
