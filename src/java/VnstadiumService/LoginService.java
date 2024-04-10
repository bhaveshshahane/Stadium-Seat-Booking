/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package VnstadiumService;

import VnstadiumRepository.LoginRepository;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class LoginService {

    public static int verifylogin(String username, String password) throws SQLException {
        LoginRepository lr = new LoginRepository();
        return lr.check(username, password);
    }

    public static int adminCheck(String username, String password) throws SQLException {
        LoginRepository lr = new LoginRepository();
        return lr.adminCheck(username, password);
    }
}
