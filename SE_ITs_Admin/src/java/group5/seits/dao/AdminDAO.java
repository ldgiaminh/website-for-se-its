/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.AdminDTO;
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
 * @author Admin
 */
public class AdminDAO {

    public AdminDTO listAllAdmin(String email) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From Admin Where Email = ?";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                stm.setString(1, email);
                rs = stm.executeQuery();

                if (rs.next()) {
                    return new AdminDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3));

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
    
    public boolean checkId(String id) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql
                String sql = "Select * From Admin Where Id = ?";
                //3. create statement to load sqkl
                stm = con.prepareStatement(sql);
                //4.excute
                stm.setString(1, id);
                rs = stm.executeQuery();

                if (rs.next()) {
                    return true;
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
        return false;
    }
}
