/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package VnstadiumRepository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class RegisterRepository {

//    String url = "jdbc:Mysql://localhost:3306/vnstadium";
//    String user = "root";
//    String pass = "";
  String url = "jdbc:mysql://localhost:3306/vnstadium";
    String user = "root";
    String pass = "bhavesh2525";

    Connection con = null;
    PreparedStatement stm = null;

    public int checkregi(String username, String emailId, String Pnumber, String password) throws SQLException {
        int status = 0;
        try {
            con = DriverManager.getConnection(url, user, pass);
            stm = con.prepareStatement("insert into userDetails(userName,emailId,phoneNumber,password) values(?,?,?,?);");
            stm.setString(1, username);
            stm.setString(2, emailId);
            stm.setString(3, Pnumber);
            stm.setString(4, password);
            status = stm.executeUpdate();
        } finally {
            con.close();
            stm.close();
        }
        return status;
    }
}
