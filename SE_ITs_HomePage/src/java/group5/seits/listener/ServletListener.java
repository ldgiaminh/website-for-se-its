///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package group5.seits.listener;
//
//import group5.seits.utils.PropertiesFileHelper;
//import java.util.Properties;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//
///**
// * Web application lifecycle listener.
// *
// * @author PC
// */
//public class ServletListener implements ServletContextListener {
//
//    @Override
//    public void contextInitialized(ServletContextEvent sce) {
//        ServletContext context = sce.getServletContext();
//        String siteMapsLocation = context.getInitParameter("SITE_MAP_LOCATION");
//        String authentication = context.getInitParameter("AUTHENTICATION");
//        Properties siteMapsProperties = PropertiesFileHelper.getProperties(context, siteMapsLocation);
//        Properties authenticationProperties = PropertiesFileHelper.getProperties(context, authentication);
//        context.setAttribute("SITE_MAP",siteMapsProperties);
//        context.setAttribute("AUTHENTICATION_LIST", authenticationProperties);
//    }
//
//    @Override
//    public void contextDestroyed(ServletContextEvent sce) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
//}
