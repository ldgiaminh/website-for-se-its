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
                                        rs.getString(8));
                                      
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
