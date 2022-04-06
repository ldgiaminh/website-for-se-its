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
public class CareerDTO {
    private String Id;
    private String Title;
    private String Description;
    private String Img;
    private String CreatedDate;
    private String SubjectId;

    public CareerDTO(String Id, String Title, String Description, String Img, String CreatedDate, String SubjectId) {
        this.Id = Id;
        this.Title = Title;
        this.Description = Description;
        this.Img = Img;
        this.CreatedDate = CreatedDate;
        this.SubjectId = SubjectId;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }

    public String getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(String CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    public String getSubjectId() {
        return SubjectId;
    }

    public void setSubjectId(String SubjectId) {
        this.SubjectId = SubjectId;
    }

    @Override
    public String toString() {
        return "CareerDTO{" + "Id=" + Id + ", Title=" + Title + ", Description=" + Description + ", Img=" + Img + ", CreatedDate=" + CreatedDate + ", SubjectId=" + SubjectId + '}';
    }
    
    
}
