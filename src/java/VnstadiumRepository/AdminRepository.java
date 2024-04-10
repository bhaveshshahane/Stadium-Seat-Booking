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
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class AdminRepository {

//    String url = "jdbc:Mysql://localhost:3306/vnstadium";
//    String user = "root";
//    String pass = "";
    String url = "jdbc:mysql://localhost:3306/vnstadium";
    String user = "root";
    String pass = "bhavesh2525";
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;
    int status = 0;

//     UserDetails table
    public ResultSet getAllUser() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from UserDetails");
        rs = stm.executeQuery();
        return rs;
    }

//      insert new user in UserDetails table
    public int insertUser(String username, String emailId, String Pnumber, String password) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("insert into UserDetails(userName,emailId,phonenumber,password) values(?,?,?,?)");
        stm.setString(1, username);
        stm.setString(2, emailId);
        stm.setString(3, Pnumber);
        stm.setString(4, password);
        int result = stm.executeUpdate();
        return result;
    }

//       delete user in UserDetails table
    public int deleteUser(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("delete from UserDetails where userId=?");
        stm.setString(1, id);
        status = stm.executeUpdate();
        return status;
    }

//      edit form for user
    public ResultSet getData(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from UserDetails where userId=?");
        stm.setString(1, id);

        rs = stm.executeQuery();
        return rs;
    }
//update user in UserDetails table

    public int updateUser(String username, String emailId, String Pnumber, String password, String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("update UserDetails set userName=?,emailId=?,phonenumber=?,password=? where userId=?");
        stm.setString(1, username);
        stm.setString(2, emailId);
        stm.setString(3, Pnumber);
        stm.setString(4, password);
        stm.setString(5, id);

        int result = stm.executeUpdate();
        return result;
    }

//  QueryDetails table
    public ResultSet getALLQuery() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from QueryDetails");
        rs = stm.executeQuery();
        return rs;
    }

// delete  query from QueryDetails table
    public int deleteQuery(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("delete from QueryDetails where queryId=?");
        stm.setString(1, id);
        status = stm.executeUpdate();
        return status;
    }

    //  SeatDetails table
    public ResultSet getALLSeats() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from SeatDetails");
        rs = stm.executeQuery();
        return rs;
    }

    //get query from user
    public int getQuery(String emailId, String message) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("insert into QueryDetails(emailId,query) values(?,?)");
        stm.setString(1, emailId);
        stm.setString(2, message);
        int result = stm.executeUpdate();
        return result;
    }

//    get event details from EventOrganizedDetails table
    public ResultSet getEventDetails() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from EventOrganizedDetails");
        rs = stm.executeQuery();
        return rs;
    }

    // add new event in EventOrganizedDetails
    public int insertEvent(String email, String eventname, String startdate, String enddate, String posterurl, String price, String amount) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("insert into EventOrganizedDetails(emailId,eventName,startDate,endDate,ticketPrice,totalAmount,imgUrl) values(?,?,?,?,?,?,?)");
        stm.setString(1, email);
        stm.setString(2, eventname);
        stm.setString(3, startdate);
        stm.setString(4, enddate);
        stm.setString(5, price);
        stm.setString(6, amount);
        stm.setString(7, posterurl);

        int result = stm.executeUpdate();
        return result;
    }
    //       delete user in EventOrganizedDetails table

    public int deleteEvent(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("delete from EventOrganizedDetails where eventId=?");
        stm.setString(1, id);
        status = stm.executeUpdate();
        return status;
    }

    //      edit form for event
    public ResultSet getEventData(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from EventOrganizedDetails where eventId=?");
        stm.setString(1, id);
        rs = stm.executeQuery();
        return rs;
    }

    // update event in EventOrganizedDetails
    public int updateEvent(String email, String eventname, String startdate, String enddate, String posterurl, String price, String amount, String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("update EventOrganizedDetails set emailId=?,eventName=?,startDate=?,endDate=?,ticketPrice=?,totalAmount=?,imgUrl=? where eventId=?");
        stm.setString(1, email);
        stm.setString(2, eventname);
        stm.setString(3, startdate);
        stm.setString(4, enddate);
        stm.setString(5, price);
        stm.setString(6, amount);
        stm.setString(7, posterurl);
        stm.setString(8, id);

        int result = stm.executeUpdate();
        return result;
    }

    // insert data into the seat table
    public int bookSeat(String eventname, String email, String price, String amount) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("insert into SeatDetails(eventName,emailId,ticketPrice,totalAmount,status) values(?,?,?,?,'pending')");
        stm.setString(1, eventname);
        stm.setString(2, email);
        stm.setString(3, price);
        stm.setString(4, amount);
        int result = stm.executeUpdate();
        return result;
    }
//    delete the seat

    public int deleteSeat(String id) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("delete from SeatDetails where seatId=?");
        stm.setString(1, id);
        status = stm.executeUpdate();
        return status;
    }

    //  get payment
    public ResultSet getPaymentData(String email) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from SeatDetails where emailId=?");
        stm.setString(1, email);
        rs = stm.executeQuery();
        return rs;
    }

    //seat update payment
    public int updateSeat(String email) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("update SeatDetails set status='success' where emailId=?");
        stm.setString(1, email);
        status = stm.executeUpdate();
        return status;
    }

    //  get user data for profile
    public ResultSet getProfileData(String mail) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select * from UserDetails where emailId=?");
        stm.setString(1, mail);

        rs = stm.executeQuery();
        return rs;
    }

    //check event date 
    public int checkEventDate(String startdate) throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count(*) from EventOrganizedDetails where startDate=?");
        stm.setString(1, startdate);
        status = stm.executeUpdate();
        return status;
    }

//    Admin stat start
    //admin user stat
    public int userStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count('id') from userdetails;");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

    // admin seat stat
    public int seatStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count('seatId') as 'seat' from seatdetails;");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

    // admin event stat
    public int eventStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count('eventId') as 'event' from eventorganizeddetails;");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

    // admin pending payment stat
    public int pendingPaymentStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count(*) from SeatDetails where status = 'pending';");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

    // admin success payment stat
    public int successPaymentStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count(*) from SeatDetails where status = 'success';");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

    // admin org stat
    public int OrgStat() throws SQLException {
        con = DriverManager.getConnection(url, user, pass);
        stm = con.prepareStatement("select count(DISTINCT emailId) from  eventorganizeddetails;");
        rs = stm.executeQuery();
        if (rs.next()) {
            status = rs.getInt(1);
        }
        return status;
    }

//    Admin stat end
}
