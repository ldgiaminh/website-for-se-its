/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.AdminDTO;
import group5.seits.utils.DBHelpers;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 *
 * @author PC
 */
public class AdminDAO {
    private Connection con = null;
    private PreparedStatement stm = null;
    private ResultSet rs = null;
    
    public AdminDTO checkLogin(String Id,String Name)
        throws SQLException, Exception, NamingException{
        
        AdminDTO result = null;
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select Id, Name From Admin where Id = ? and Name = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, Id);
                stm.setString(2, Name);
                if (rs.next()) {
                    result = new AdminDTO(rs.getString("Id"),
                            rs.getString("Name"));
                }
            }
        }
        catch(Exception e){
            
        }
        finally{
            closeConnection();
        }
        return result;        
    }
    
    private void closeConnection() throws Exception {
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
