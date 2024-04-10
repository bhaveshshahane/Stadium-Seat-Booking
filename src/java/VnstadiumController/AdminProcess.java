/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package VnstadiumController;

import VnstadiumService.AdminServices;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class AdminProcess extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String process = request.getParameter("process");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        AdminServices adminService = new AdminServices();
        try {

//            UserDetails table and add new user form
            if (process.equals("userDetails") || process.equals("addForm")) {
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getAllUser());
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

//            insert new user in UserDetails table
            if (process.equals("insertUser")) {
                String username = request.getParameter("username");
                String emailId = request.getParameter("email");
                String pnumber = request.getParameter("pnumber");
                String password = request.getParameter("password");

                int status = adminService.insertUser(username, emailId, pnumber, password);
                out.print(status);
            }

//             delete user in UserDetails table
            if (process.equals("deleteUser")) {
                String id = request.getParameter("id");
                int status = adminService.deleteUser(id);
                out.print(status);
            }

//            edit form for user
            if (process.equals("getEdit")) {
                String id = request.getParameter("id");
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getData(id));
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

//             update user in UserDetails table
            if (process.equals("updateUser")) {
                String id = request.getParameter("id");
                String username = request.getParameter("username");
                String emailId = request.getParameter("email");
                String pnumber = request.getParameter("pnumber");
                String password = request.getParameter("password");

                int status = adminService.updateUser(username, emailId, pnumber, password, id);
                out.print(status);
            }

//            QueryDetails table
            if (process.equals("queryDetails")) {
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getALLQuery());
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

//             delete  query from QueryDetails table
            if (process.equals("deleteQuery")) {
                String id = request.getParameter("id");
                int status = adminService.deleteQuery(id);
                out.print(status);
            }

//homeDetails for Admin Dashboard            
            if (process.equals("homeDetails")) {
                request.setAttribute("process", process);
                session.setAttribute("userStat", adminService.userStat());
                session.setAttribute("seatStat", adminService.seatStat());
                session.setAttribute("eventStat", adminService.eventStat());
                session.setAttribute("pendingPaymentStat", adminService.pendingPaymentStat());
                session.setAttribute("successPaymentStat", adminService.successPaymentStat());
                session.setAttribute("OrgStat", adminService.OrgStat());
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

//stadiumDetails for Admin Dashboard            
            if (process.equals("stadiumDetails")) {
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getALLSeats());
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

//get Query from User            
            if (process.equals("getquery")) {
                String emailId = request.getParameter("email");
                String message = request.getParameter("message");
                int status = adminService.getQuery(emailId, message);
                out.print(status);
            }
//get event details & from 
            if (process.equals("eventDetails") || process.equals("addEventForm")) {
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getEventDetails());
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }
            //add the new events         
            if (process.equals("addEvent")) {
                String email = request.getParameter("email");
                String eventname = request.getParameter("eventname");
                String startdate = request.getParameter("startdate");
                String enddate = request.getParameter("enddate");
                String posterurl = request.getParameter("posterurl");
                String price = request.getParameter("price");
                String amount = request.getParameter("amount");
//                int checkDate = adminService.checkEventDate(startdate);
//                out.print(checkDate);
//                if(checkDate>0){
//                    out.print("0");
//                }
//                else{
                int status = adminService.insertEvent(email, eventname, startdate, enddate, posterurl, price, amount);
                out.print(status);
//                }
            }

            // delete events
            if (process.equals("deleteEvent")) {
                String id = request.getParameter("id");
                int status = adminService.deleteEvent(id);
                out.print(status);
            }

//            edit form for event
            if (process.equals("getEventEdit")) {
                String id = request.getParameter("id");
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getEventData(id));
                RequestDispatcher view = request.getRequestDispatcher("AdminProcess.jsp");
                view.forward(request, response);
            }

            //update the  events         
            if (process.equals("updateEvent")) {
                String email = request.getParameter("email");
                String eventname = request.getParameter("eventname");
                String startdate = request.getParameter("startdate");
                String enddate = request.getParameter("enddate");
                String posterurl = request.getParameter("posterurl");
                String price = request.getParameter("price");
                String amount = request.getParameter("amount");
                String id = request.getParameter("id");

                int status = adminService.updateEvent(email, eventname, startdate, enddate, posterurl, price, amount, id);
                out.print(status);
            }

            //delete seat book
            if (process.equals("deleteSeat")) {
                String id = request.getParameter("id");
                int status = adminService.deleteSeat(id);
                out.print(status);
            }
        } catch (SQLException e) {

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
