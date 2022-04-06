/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.EventsDTO;
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
 * @author ADMIN
 */
public class EventsDAO {
    private List<EventsDTO> eventsList;

    public List<EventsDTO> getEventsList() {
        return eventsList;
    }
    
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    public EventsDTO LoadHotEvents() 
    throws SQLException, NamingException{
        try {
            //1. make connection to DB
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2. create String sql
                String sql = "Select top 1 * " +
                             "From Events " +
                             "Where CateEventId='HV' " +
                             "Order By Id DESC";
                //3.create statement to load sql 
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                if (rs.next()) {
                    return new EventsDTO(rs.getString(1), 
                                        rs.getString(2), 
                                        rs.getString(3), 
                                        rs.getString(4), 
                                        rs.getString(5), 
                                        rs.getString(6), 
                                        rs.getString(7), 
                                        rs.getString(8));
                                      
                }
            }
        } catch (Exception ex) {
            
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
        return null;
    }
    public EventsDTO getEventsById(String id) 
    throws SQLException, NamingException{
        try {
            //1. make connection to DB
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * "
                        + "From Events "
                        + "Where Id = ?";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, id);
                //4. excute
                rs = stm.executeQuery();
                if (rs.next()) {
                    return new EventsDTO(rs.getString(1), 
                                        rs.getString(2), 
                                        rs.getString(3), 
                                        rs.getString(4), 
                                        rs.getString(5), 
                                        rs.getString(6), 
                                        rs.getString(7), 
                                        rs.getString(8) );
                                       
                }
            }
        }
        catch(Exception e){
            
        }
        finally {
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
    
    public List<EventsDTO> LoadBigEvent() 
    throws SQLException, NamingException{
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2. create String sql
                String sql = "Select top 4 * "
                        + "From Events "
                        + "Where CateEventId = 'BV' "
                        + "Order By Id DESC";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<EventsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    EventsDTO dto = new EventsDTO
                                                (rs.getString(1), 
                                                rs.getString(2), 
                                                rs.getString(3), 
                                                rs.getString(4), 
                                                rs.getString(5), 
                                                rs.getString(6), 
                                                rs.getString(7), 
                                                rs.getString(8));
                                               
                    list.add(dto);
                }
                return list;
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
        return null;
    }
    
    public List<EventsDTO> LoadNormalEvent() 
    throws SQLException, NamingException{
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2. create String sql
                String sql = "Select * "
                        + "From Events "
                        + "Where CateEventId = 'NV'";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<EventsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    EventsDTO dto = new EventsDTO
                                                (rs.getString(1), 
                                                rs.getString(2), 
                                                rs.getString(3), 
                                                rs.getString(4), 
                                                rs.getString(5), 
                                                rs.getString(6), 
                                                rs.getString(7), 
                                                rs.getString(8) );
                                               
                    list.add(dto);
                }
                return list;
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
        return null;
    }
    
     public List<EventsDTO> LoadAllEvent() 
    throws SQLException, NamingException{
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2. create String sql
                String sql = "Select * From Events";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<EventsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    EventsDTO dto = new EventsDTO
                                                (rs.getString(1), 
                                                rs.getString(2), 
                                                rs.getString(3), 
                                                rs.getString(4), 
                                                rs.getString(5), 
                                                rs.getString(6), 
                                                rs.getString(7), 
                                                rs.getString(8));
                                               
                    list.add(dto);
                }
                return list;
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
        return null;
    }
     
     public void DeleteEvents(String id) 
     throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Delete From Events "
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
     
    public void updateEvents(String id, String title, String image, String des, 
             String content, String createdDate, String qoutes, String cateEventsId) 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Update Events " +
                            "Set Title = ?, " +
                            "Img = ?, " +
                            "Des = ?, " +
                            "Content = ?, " +
                            "CreatedDate = ?, " +
                            "Quotes = ?, " +
                            "CateEventId = ? " +
                            "Where Id = ?";
                //3.create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, title);
                stm.setString(2, image);
                stm.setString(3, des);
                stm.setString(4, content);
                stm.setString(5, createdDate);
                stm.setString(6, qoutes);
                stm.setString(7, cateEventsId);
                stm.setString(8, id);
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
    
    public void addEvent(String id, String title, String img, String des, String content,
            String createdate, String quotes, String categoryEvent) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into Events"
                        + "(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)"
                        + "Values(?,?,?,?,?,?,?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, title);
                stm.setString(3, img);
                stm.setString(4, des);
                stm.setString(5, content);
                stm.setString(6, createdate);
                stm.setString(7, quotes);
                stm.setString(8, categoryEvent);
             
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
    
    public List<EventsDTO> searchEvents(String searchValue)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Select * From Events "
                        + "Where [Title] Like ?";

                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + searchValue + "%");
                rs = stm.executeQuery();
                List<EventsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    EventsDTO dto = new EventsDTO
                                                (rs.getString(1), 
                                                rs.getString(2), 
                                                rs.getString(3), 
                                                rs.getString(4), 
                                                rs.getString(5), 
                                                rs.getString(6), 
                                                rs.getString(7), 
                                                rs.getString(8));
                                               
                    list.add(dto);
                }
                return list;
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
        return null;
    }
    
}
