/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.NewsCategoryDTO;
import group5.seits.dto.NewsDTO;
import group5.seits.utils.DBHelpers;
import java.io.Serializable;
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
public class NewsCategoryDAO implements Serializable{
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    public List<NewsCategoryDTO> loadAllCate() 
    throws SQLException, NamingException{
        try {
            //1.make connection 
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategoryNews";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<NewsCategoryDTO> list = new ArrayList<>();
                while (rs.next()) {
                    NewsCategoryDTO dto = new NewsCategoryDTO(rs.getString(1), 
                                                               rs.getString(2));
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
    
    public List<NewsDTO> getNewsById(String id) 
    throws SQLException, NamingException{
        try {
            //1.make connection 
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From News    "
                        + "Where CateNewsId = ?";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, id);
                //4.excute
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
