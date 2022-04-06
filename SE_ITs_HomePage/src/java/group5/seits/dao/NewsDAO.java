/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.NewsDTO;
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
public class NewsDAO {
    private List<NewsDTO> listNews;

    public List<NewsDTO> getListNews() {
        return listNews;
    }
    
    public NewsDTO LoadHotNews() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            //1. check connection
            if (con != null) {
                //2. create string sql
                String sql = "Select top 1 * "
                        + "From News "
                        + "Where CateNewsId = 'CN01' "
                        + "Order by Id DESC";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. Excute
                rs = stm.executeQuery();
                if (rs.next()) {
                    return new NewsDTO(rs.getString(1), rs.getString(2), 
                            rs.getString(3), rs.getString(4), rs.getString(5), 
                            rs.getString(6), rs.getString(7));
                }
            }
        } catch(Exception ex) {
            
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
    
    public List<NewsDTO> LoadFourDigitalNews() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            //1. check connection
            if (con != null) {
                //2. create string sql
                String sql = "Select top 4 * " +
                             "From News " +
                             "Where CateNewsId = 'CN03'  " +
                             "Order By Id DESC";
                        
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. Excute
                rs = stm.executeQuery();
                List<NewsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    NewsDTO dto = new NewsDTO
                                            (rs.getString(1), 
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
        } catch(Exception ex) {
            
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
    
    public List<NewsDTO> LoadDgitalAndAINews() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            //1. check connection
            if (con != null) {
                //2. create string sql
                String sql = "Select * " +
                            "From News " +
                            "Where CateNewsId = 'CN03' OR CateNewsId = 'CN02'\n" +
                            "Except " +
                            "Select top 4 * " +
                            "From News " +
                            "Where CateNewsId = 'CN03' " +
                            "Order By Id DESC";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. Excute
                rs = stm.executeQuery();
                List<NewsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    NewsDTO dto = new NewsDTO
                                            (rs.getString(1), 
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
        } catch(Exception ex) {
            
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
    
    public List<NewsDTO> LoadAllNews() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            //1. check connection
            if (con != null) {
                //2. create string sql
                String sql = "Select * From News";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. Excute
                rs = stm.executeQuery();
                List<NewsDTO> list = new ArrayList<>();
                while (rs.next()) {
                    NewsDTO dto = new NewsDTO
                                            (rs.getString(1), 
                                                    rs.getString(2), 
                            rs.getString(3), rs.getString(4), rs.getString(5), 
                            rs.getString(6), rs.getString(7));
                    list.add(dto);
                }
                return list;
            }
        } catch(Exception ex) {
            
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