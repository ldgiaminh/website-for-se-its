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
public class HomePageDTO {
    private String Id;
    private String Title;
    private String Des;
    private String Img;

    public HomePageDTO(String Id, String Title, String Des, String Img) {
        this.Id = Id;
        this.Title = Title;
        this.Des = Des;
        this.Img = Img;
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

    public String getDes() {
        return Des;
    }

    public void setDes(String Des) {
        this.Des = Des;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }

    @Override
    public String toString() {
        return "HomePageDTO{" + "Id=" + Id + ", Title=" + Title + ", Des=" + Des + ", Img=" + Img + '}';
    }
    
    
}
