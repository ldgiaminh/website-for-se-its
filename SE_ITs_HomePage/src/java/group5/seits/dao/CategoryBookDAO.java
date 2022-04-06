/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.BookDTO;
import group5.seits.dto.CategoryBookDTO;
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
public class CategoryBookDAO implements Serializable{
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    public List<CategoryBookDTO> loadAllCategoryBook() 
    throws SQLException, NamingException{
        try {
            //1. make connection 
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategoryBook";
                //3.create statemaent to load sql
                stm = con.prepareStatement(sql);
                //4.excute query
                rs = stm.executeQuery();
                List<CategoryBookDTO> list = new ArrayList<>();
                while (rs.next()) {
                    CategoryBookDTO dto  = new CategoryBookDTO(
                                                              rs.getString(1), 
                                                              rs.getString(2), 
                                                              rs.getString(3));
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
    
    public List<BookDTO> getBookByCate(String id) 
    throws SQLException, NamingException{
        try {
            //1. make connection 
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From Book "
                        + "Where CateBookId = ?";
                //3.create statemaent to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, id);
                //4.excute query
                rs = stm.executeQuery();
                List<BookDTO> list = new ArrayList<>();
                while (rs.next()) {
                    BookDTO dto = new BookDTO
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
