/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.BookDTO;
import group5.seits.dto.CategoryBookDTO;
import group5.seits.dto.CategoryDTO;
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
public class CategoryDAO {

    public List<CategoryDTO> loadCateEvents() throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategoryEvents";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<CategoryDTO> list = new ArrayList<>();
                while (rs.next()) {
                    CategoryDTO dto = new CategoryDTO(rs.getString(1),
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

    public List<CategoryDTO> loadCateNews() throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategoryNews";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<CategoryDTO> list = new ArrayList<>();
                while (rs.next()) {
                    CategoryDTO dto = new CategoryDTO(rs.getString(1),
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

    public List<CategoryBookDTO> loadCateBook() throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategoryBook";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<CategoryBookDTO> list = new ArrayList<>();
                while (rs.next()) {
                    CategoryBookDTO dto = new CategoryBookDTO(rs.getString(1),
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
    
    public void addCategoryEvent(String id, String name) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into CategoryEvents"
                        + "(Id,Name)"
                        + "Values(?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, name);
             
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
    
    public void addCategoryNews(String id, String name) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into CategoryNews"
                        + "(Id,Name)"
                        + "Values(?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, name);
             
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
    
    public void addCategoryBook(String id, String name, String subjectId) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into CategoryBook"
                        + "(Id,Name,SubjectId)"
                        + "Values(?,?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, name);
                stm.setString(3, subjectId);
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
    
    public List<CategoryDTO> loadCateSubject() throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From CategorySubject";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<CategoryDTO> list = new ArrayList<>();
                while (rs.next()) {
                    CategoryDTO dto = new CategoryDTO(rs.getString(1),
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

}
