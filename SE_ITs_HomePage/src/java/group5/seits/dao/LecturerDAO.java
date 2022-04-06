/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.LecturerDTO;
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
public class LecturerDAO {
    private List<LecturerDTO> lecturerList;
    
    private List<LecturerDTO> getLecturerList(){
        return lecturerList;
    }
    
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    
    public List<LecturerDTO> LoadLecturer() throws SQLException, NamingException{
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select * From Lecturer";
                
                stm = con.prepareStatement(sql);
                
                rs = stm.executeQuery();
                List<LecturerDTO> list = new ArrayList<>();
                while(rs.next()){
                    LecturerDTO dto = new LecturerDTO(rs.getString(1), 
                                                        rs.getString(2), 
                                                        rs.getString(3), 
                                                        rs.getString(4), 
                                                        rs.getString(5), 
                                                        rs.getString(6), 
                                                        rs.getString(7) );
                                                       
                    list.add(dto);
                }
                return list;
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
    
    public LecturerDTO getLecturerById(String id) throws SQLException, NamingException{
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "Select * From Lecturer where Id = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
                rs = stm.executeQuery();
                if(rs.next()){
                    return new LecturerDTO(rs.getString(1), 
                                            rs.getString(2), 
                                            rs.getString(3), 
                                            rs.getString(4), 
                                            rs.getString(5), 
                                            rs.getString(6), 
                                            rs.getString(7));
                                            
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
