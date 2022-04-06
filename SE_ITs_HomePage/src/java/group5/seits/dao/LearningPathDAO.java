/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.dao;

import group5.seits.dto.CareerDTO;
import group5.seits.dto.SkillDTO;
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
public class LearningPathDAO {
    private List<SkillDTO> listSkill;
    private List<CareerDTO> listCareer;
    
    public List<SkillDTO> getListSkill() {
        return listSkill;
    }
    
    public SkillDTO loadSkillSE() throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "select * from Skill where Id = 'SESkl' ";
            
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
              
                if(rs.next()){
                    return new SkillDTO(rs.getString(1), rs.getNString(2), 
                            rs.getNString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                    
                }
                
            }
        }
        catch(Exception ex){
            
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
    
    public SkillDTO loadSkillITs() throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "select * from Skill where Id = 'ITsSkl' ";
            
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
              
                if(rs.next()){
                    return new SkillDTO(rs.getString(1), rs.getNString(2), 
                            rs.getNString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                    
                }
                
            }
        }
        catch(Exception ex){
            
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
    
    public CareerDTO loadCareerSE() throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "select * from Career where Id = 'SECa' ";
            
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
              
                if(rs.next()){
                    return new CareerDTO(rs.getString(1), rs.getNString(2), 
                            rs.getNString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                    
                }
                
            }
        }
        catch(Exception ex){
            
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
    
    public CareerDTO loadCareerITs() throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try{
            con = DBHelpers.makeConnection();
            if(con != null){
                String sql = "select * from Career where Id = 'ITsCa' ";
            
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
              
                if(rs.next()){
                    return new CareerDTO(rs.getString(1), rs.getNString(2), 
                            rs.getNString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                    
                }
                
            }
        }
        catch(Exception ex){
            
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
    
    public List<CareerDTO> getListCareer() {
        return listCareer;
    }
}
