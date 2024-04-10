/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package VnstadiumService;

import VnstadiumRepository.AdminRepository;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lenovo
 */
public class AdminServices {

    AdminRepository adminRepository = new AdminRepository();

    public ResultSet getAllUser() throws SQLException {
        return adminRepository.getAllUser();
    }

    public int insertUser(String username, String emailId, String Pnumber, String password) throws SQLException {
        return adminRepository.insertUser(username, emailId, Pnumber, password);
    }

    public int deleteUser(String id) throws SQLException {
        return adminRepository.deleteUser(id);
    }

    public ResultSet getData(String id) throws SQLException {
        return adminRepository.getData(id);
    }

    public int updateUser(String username, String emailId, String Pnumber, String password, String id) throws SQLException {
        return adminRepository.updateUser(username, emailId, Pnumber, password, id);
    }

    public ResultSet getALLQuery() throws SQLException {
        return adminRepository.getALLQuery();
    }

    public int deleteQuery(String id) throws SQLException {
        return adminRepository.deleteQuery(id);
    }

    public ResultSet getALLSeats() throws SQLException {
        return adminRepository.getALLSeats();
    }

    public int getQuery(String emailId, String message) throws SQLException {
        return adminRepository.getQuery(emailId, message);
    }

    public ResultSet getEventDetails() throws SQLException {
        return adminRepository.getEventDetails();
    }

    public int insertEvent(String email, String eventname, String startdate, String enddate, String posterurl, String price, String amount) throws SQLException {
        return adminRepository.insertEvent(email, eventname, startdate, enddate, posterurl, price, amount);
    }

    public int deleteEvent(String id) throws SQLException {
        return adminRepository.deleteEvent(id);
    }

    public ResultSet getEventData(String id) throws SQLException {
        return adminRepository.getEventData(id);
    }

    public int updateEvent(String email, String eventname, String startdate, String enddate, String posterurl, String price, String amount, String id) throws SQLException {
        return adminRepository.updateEvent(email, eventname, startdate, enddate, posterurl, price, amount, id);
    }

    public int bookSeat(String eventname, String email, String price, String amount) throws SQLException {
        return adminRepository.bookSeat(eventname, email, price, amount);
    }

    public int deleteSeat(String id) throws SQLException {
        return adminRepository.deleteSeat(id);
    }

    public ResultSet getPaymentData(String email) throws SQLException {
        return adminRepository.getPaymentData(email);
    }

    public int updateSeat(String email) throws SQLException {
        return adminRepository.updateSeat(email);
    }

    public ResultSet getProfileData(String mail) throws SQLException {
        return adminRepository.getProfileData(mail);
    }

    public int checkEventDate(String startdate) throws SQLException {
        return adminRepository.checkEventDate(startdate);
    }

    public int userStat() throws SQLException {
        return adminRepository.userStat();
    }

    public int seatStat() throws SQLException {
        return adminRepository.seatStat();
    }

    public int eventStat() throws SQLException {
        return adminRepository.eventStat();
    }

    public int pendingPaymentStat() throws SQLException {
        return adminRepository.pendingPaymentStat();
    }

    public int successPaymentStat() throws SQLException {
        return adminRepository.successPaymentStat();
    }

    public int OrgStat() throws SQLException {
        return adminRepository.OrgStat();
    }
}
