/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.LecturerDTO;
import group5.seits.utils.DBHelpers;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author PC
 */
public class LecturerDAO {
    private List<LecturerDTO> lecturerList;
    
    private List<LecturerDTO> getLecturerList(){
        return lecturerList;
    }
    
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    public List<LecturerDTO> LoadLecturer() throws SQLException, NamingException{
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select * From Lecturer";
                
                stm = con.prepareStatement(sql);
                
                rs = stm.executeQuery();
                List<LecturerDTO> list = new ArrayList<>();
                while(rs.next()){
                    LecturerDTO dto = new LecturerDTO(rs.getString(1), 
                                                        rs.getString(2), 
                                                        rs.getString(3), 
                                                        rs.getString(4), 
                                                        rs.getString(5), 
                                                        rs.getString(6), 
                                                        rs.getString(7));
                                                      
                    list.add(dto);
                }
                return list;
            }
        }
        catch(Exception e){
            
        }
        finally{
             if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
    
    public LecturerDTO getLecturerById(String id) throws SQLException, NamingException{
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select * From Lecturer where Id = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                rs = stm.executeQuery();
                if(rs.next()){
                    return new LecturerDTO(rs.getString(1), 
                                            rs.getString(2), 
                                            rs.getString(3), 
                                            rs.getString(4), 
                                            rs.getString(5), 
                                            rs.getString(6), 
                                            rs.getString(7));
                                          
                }
            }
        }
        catch(Exception e){
            
        }
        finally{
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }   
        return null;       
        
    }
    
    public void addLecturer(String id, String name, String img, String des,
            String createdate, String quotes, String subjectId) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into Lecturer " +
                             "([Id],[Name],[Img],[Des],[CreatedDate],[Quotes],[SubjectId]) " +
                             "Values(?,?,?,?,?,?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, name);
                stm.setString(3, img);
                stm.setString(4, des);
                stm.setString(5, createdate);
                stm.setString(6, quotes);
                stm.setString(7, subjectId);
             
                stm.executeUpdate();
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

    }
    
    public void updateLecturer(String id, String name, String image, String des, 
            String createdDate, String qoutes, String subjectId) 
    throws SQLException, NamingException{
        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Update Lecturer " +
                            "Set [Name] = ?, " +
                            "[Img] = ?, " +
                            "[Des] = ?, " +
                            "[CreatedDate] = ?, " +
                            "[Quotes] = ?, " +
                            "[SubjectId] = ? " +
                            "Where Id = ?";
                //3.create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, name);
                stm.setString(2, image);
                stm.setString(3, des);
                stm.setString(4, createdDate);
                stm.setString(5, qoutes);
                stm.setString(6, subjectId);
                stm.setString(7, id);
                //4.excute
                stm.executeUpdate();
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
    
    
    public void deleteLecturerById(String id) throws SQLException, NamingException{
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Delete From Lecturer "
                        + "Where Id = ?";
                //3.create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, id);
                //4. excute query
                stm.executeUpdate();
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
    
    
}
