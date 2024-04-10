/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package VnstadiumService;

import VnstadiumRepository.RegisterRepository;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class RegisterService {

    public static int verifyregis(String username, String emailId, String pnumber, String password) throws SQLException {
        RegisterRepository Rr = new RegisterRepository();
        return Rr.checkregi(username, emailId, pnumber, password);
    }
}
