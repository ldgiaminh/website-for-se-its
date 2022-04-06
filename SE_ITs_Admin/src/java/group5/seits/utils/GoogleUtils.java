/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group5.seits.utils;

import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import group5.seits.dao.AdminDAO;
import group5.seits.dto.AdminDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author super
 */
public class GoogleUtils {
    public static String getToken(final String code) throws ClientProtocolException, IOException {
    String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
        .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
        .add("redirect_uri",Constants.GOOGLE_REDIRECT_URI).add("code", code)
        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
        .execute().returnContent().asString();
      JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
      String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
      return accessToken;
  }
  public static GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
    String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
    String response = Request.Get(link).execute().returnContent().asString();
    GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
    System.out.println(googlePojo);
    return googlePojo;
  }
  
//  public boolean CheckAdminInfoValidInDb(GooglePojo email) throws SQLException, NamingException{
//      AdminDAO dao = new AdminDAO();
//      List<AdminDTO> adminInfo = dao.listAllAdmin();
//      for (AdminDTO adminDTO : adminInfo) {
//          if(adminDTO.getEmail().equals(email)){
//              return true;
//          }
//      }
//      return false;
//  }
  
  
}
