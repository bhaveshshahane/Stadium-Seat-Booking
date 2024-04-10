/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package VnstadiumRepository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class LoginRepository {

//    String url = "jdbc:Mysql://127.0.0.1:3306/vnstadium";
//    String user = "root";
//    String pass = "";
    String url = "jdbc:mysql://localhost:3306/vnstadium";
    String user = "root";
    String pass = "bhavesh2525";

    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public int check(String username, String password) throws SQLException {
        int status = 0;
        try {
            con = DriverManager.getConnection(url, user, pass);
            stm = con.prepareStatement("select count(username) from userDetails where emailId = ? and password = ?;");
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } finally {
            con.close();
            stm.close();
            rs.close();
        }
        return status;
    }

    public int adminCheck(String username, String password) throws SQLException {
        int status = 0;
        try {
            con = DriverManager.getConnection(url, user, pass);
            stm = con.prepareStatement("select count(*) from userDetails where emailId = ? and password = ? and isAdmin is not null;");
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } finally {
            con.close();
            stm.close();
            rs.close();
        }
        return status;
    }

}
