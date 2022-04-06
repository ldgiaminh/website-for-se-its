/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author PC
 */

public class DBHelpers {
    public static Connection makeConnection() throws
           SQLException,NamingException{
        Context context = new InitialContext();
        Context tomcatContext = /*tu may minh mapping toi Tomcat*/(Context)context.lookup("java:comp/env");
        DataSource ds = (DataSource)tomcatContext.lookup("FunnyProject");
        Connection con = ds.getConnection();
        return con;
//        //1. add driver
//        //1.1 Load driver
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        //chua toi uu chuyen write one for all
//        //2. create URL connection string
//        String url = "jdbc:sqlserver://localhost:1433;"
//                + "databaseName=MiniProject;"
//                + "instanceName=DESKTOP-TKCVSTT\\SQLEXPRESS";
//        //3. open connection
//        Connection con = DriverManager.getConnection(url, "sa", "trung0933251079");
//        
//        return con;
    }
}
