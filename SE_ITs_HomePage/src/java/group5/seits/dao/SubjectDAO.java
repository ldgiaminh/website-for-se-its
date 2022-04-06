/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.SubjectDTO;
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
public class SubjectDAO {
    private List<SubjectDTO> listSubject;

    public List<SubjectDTO> getListSubject() {
        return listSubject;
    }
    public SubjectDTO LoadSE() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql 
                String sql = "Select * From Subject "
                        + "Where CateSubjId = 'SE'";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. excute
                rs = stm.executeQuery();
                if (rs.next()) {
                    return new SubjectDTO
                                        (rs.getString(1), 
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
    
    public SubjectDTO LoadITs() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql 
                String sql = "Select * From Subject "
                        + "Where CateSubjId = 'ITS'";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. excute
                rs = stm.executeQuery();

                if (rs.next()) {
                    return new SubjectDTO
                                        (rs.getString(1), 
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
    
    public List<SubjectDTO> LoadAllSubject() 
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            //1. make connection
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2.create String sql 
                String sql = "Select * From Subject";
                //3. create statement to load sql
                stm = con.prepareStatement(sql);
                //4. excute
                rs = stm.executeQuery();
                List<SubjectDTO> list = new ArrayList<>();
                while (rs.next()) {
                    SubjectDTO dto = new SubjectDTO
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
