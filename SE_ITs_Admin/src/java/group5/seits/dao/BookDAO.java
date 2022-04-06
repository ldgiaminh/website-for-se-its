/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.BookDTO;
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
public class BookDAO {

    public List<BookDTO> loadAllBook()
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From Book";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                rs = stm.executeQuery();
                List<BookDTO> list = new ArrayList<>();
                while (rs.next()) {
                    BookDTO dto = new BookDTO(rs.getString(1),
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

    public void deleteBook(String id)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Delete From Book "
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

    public BookDTO getBookById(String id)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From Book "
                        + "Where Id = ?";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, id);
                //4.excute
                rs = stm.executeQuery();
                if (rs.next()) {
                    return new BookDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7));
                }
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

    public void updateBook(String id, String name, String author, String image,
            String createdDate, String url, String cateBookId)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Update Book \n"
                        + "Set Name = ?, "
                        + "Author = ?, "
                        + "Img = ?, "
                        + "CreatedDate = ?, "
                        + "Url = ?, "
                        + "CateBookId = ? "
                        + "Where Id = ?";
                //3.create statement to load sql
                stm = con.prepareStatement(sql);
                //and set value
                stm.setString(1, name);
                stm.setString(2, author);
                stm.setString(3, image);
                stm.setString(4, createdDate);
                stm.setString(5, url);
                stm.setString(6, cateBookId);
                stm.setString(7, id);
                //4.excute query
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

    public void addBook(String id, String name, String img, String author, String url,
            String createdate, String catebookId) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Insert into Book"
                        + "(Id,Name,Img,Author,Url,CreatedDate,CateBookId)"
                        + "Values(?,?,?,?,?,?,?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, name);
                stm.setString(3, img);
                stm.setString(4, author);
                stm.setString(5, url);
                stm.setString(6, createdate);
                stm.setString(7, catebookId);

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
    private List<BookDTO> BookList;

    public List<BookDTO> getGetBookList() {
        return BookList;
    }

    public List<BookDTO> searchBook(String searchValue)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Select * From Book "
                        + "Where Name Like ?";

                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + searchValue + "%");
                rs = stm.executeQuery();
                List<BookDTO> list = new ArrayList<>();
                while (rs.next()) {
                    BookDTO dto = new BookDTO(rs.getString(1), 
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
