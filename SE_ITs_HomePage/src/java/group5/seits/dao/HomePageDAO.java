/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.HomePageDTO;
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
public class HomePageDAO {
   
   List<HomePageDTO> homepage;
   
   public List<HomePageDTO> getHomePage(){
       return homepage;
   }
   
   public HomePageDTO LoadHomePage() throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select * From HomePage";
                
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                
                if(rs.next()){
                   return new HomePageDTO(rs.getString(1), rs.getNString(2), rs.getNString(3), rs.getString(4));
                }
            }
        }
        catch(Exception e){
            
        }
        finally{
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
