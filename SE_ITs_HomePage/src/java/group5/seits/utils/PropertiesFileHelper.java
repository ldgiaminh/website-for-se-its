///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package group5.seits.utils;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.Properties;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.ServletContext;
//
///**
// *
// * @author PC
// */
//public class PropertiesFileHelper {
//    public static Properties getProperties(ServletContext context, String fileRelative){
//        InputStream input = context.getResourceAsStream(fileRelative);
//        Properties properties = null;
//        try{
//            properties = new Properties();
//            properties.load(input);
//        }
//        catch(IOException ex) {
//            Logger.getLogger(PropertiesFileHelper.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return properties;
//    }
//}
