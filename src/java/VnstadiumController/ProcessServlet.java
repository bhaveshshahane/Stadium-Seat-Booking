/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package VnstadiumController;

import VnstadiumService.AdminServices;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ProcessServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String process = request.getParameter("process");
        AdminServices adminService = new AdminServices();
        HttpSession session = request.getSession();
        SendMail sendMail = new SendMail();

        try {

            if (process.equals("vipSeat")
                    || process.equals("soundAndLight")
                    || process.equals("homeload")
                    || process.equals("about")
                    || process.equals("Services")
                    || process.equals("Galary")
                    || process.equals("Team")
                    || process.equals("Contact")
                    || process.equals("eventorg")
                    || process.equals("eventload")
                    || process.equals("instantFood")
                    || process.equals("parkingService")) {
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getEventDetails());
                RequestDispatcher view = request.getRequestDispatcher("Content.jsp");
                view.forward(request, response);
            }
            if (process.equals("seatBooking")) {
                request.setAttribute("process", process);
                String id = request.getParameter("id");
                request.setAttribute("process", process);
//                out.print(id);
                request.setAttribute("resultSet", adminService.getEventData(id));
                RequestDispatcher view = request.getRequestDispatcher("SeatBookingForm.jsp");
                view.forward(request, response);
            }

            if (process.equals("seatbook")) {
                String eventname = request.getParameter("eventname");
                String email = request.getParameter("email");
                String price = request.getParameter("price");
                String amount = request.getParameter("amount");
                int result = adminService.bookSeat(eventname, email, price, amount);
                out.println(result);
                if (result > 0) {
                    session.setAttribute("eventname", eventname);
                    session.setAttribute("price", price);
                    session.setAttribute("amount", amount);
//                    request.setAttribute("resultSet", adminService.getPaymentData(email));
                    RequestDispatcher view = request.getRequestDispatcher("paymentGateway.jsp");
                    view.forward(request, response);
                }
            }

            if (process.equals("updatepayment")) {
                String email = request.getParameter("email");
                int result = adminService.updateSeat(email);
//                out.print(result);
//                session.invalidate();
                if (result > 0) {
                    String mail = session.getAttribute("username").toString();
                    String eventname = session.getAttribute("eventname").toString();
                    String amount = session.getAttribute("amount").toString();
                    String price = session.getAttribute("price").toString();
//                    String text = mail + " Thank you for Ticket Booking.your Event Name is:" + eventname + " Per Ticket price: " + price + " And Total Amount: " + amount;
                    String text = "<!DOCTYPE html>\n"
                            + "<html lang=\"en\">\n"
                            + "<head>\n"
                            + "  <meta charset=\"UTF-8\">\n"
                            + "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                            + "  <title>VNService</title>\n"
                            + "</head>\n"
                            + "<body>\n"
                            + "  <center>\n"
                            + "  <div class=\"container\" style=\"\n"
                            + "  height:740px;\n"
                            + "  width: 872px;\n"
                            + "  border-radius: 12px;\n"
                            + "  box-shadow: 8px 8px 8px gray;\n"
                            + "  margin-top: 20px;\n"
                            + "  background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTffdLYWahaRQoBIIZxrJkO8iW3mrycFLWzgQ&usqp=CAU');\n"
                            + "  background-repeat: no-repeat;\n"
                            + "  background-size:cover;\n"
                            + "  color: white;\n"
                            + "  \n"
                            + "  \">\n"
                            + "    <img style=\" \n"
                            + "    height: 100px;\n"
                            + "    width: 100px;\n"
                            + "    margin-top: 10px;\n"
                            + "    background-color: white;\n"
                            + "    border: none;\n"
                            + "    border-radius: 100%;\n"
                            + "    \" src=\"https://cdn-icons-png.freepik.com/512/88/88961.png\" />\n"
                            + "    <div >\n"
                            + "      <h1 style=\"font-size: calc(1.375rem + 1.5vw);\n"
                            + "     width: 550px;\n"
                            + "     height: 55px;\"><b>THANK YOU </b></h1>\n"
                            + "     <p style=\"text-decoration: none;color: lightblue;\">" + mail + "</p>\n"
                            + "      <p style=\"margin-top: 0px;\n"
                            + "      margin-bottom: 1rem;\n"
                            + "    height: 51px;\n"
                            + "     width: 550px;\n"
                            + "      \">WE HOPE YOU WILL GET ENJOY THE SHOW WITH OUR FOOD & PARKING SERVICE.</p>\n"
                            + "    </div>\n"
                            + "    <h3 >Congratulations...</h3>\n"
                            + "\n"
                            + "    <div  id=\"card\" style=\"  height: 292px;\n"
                            + "    margin-bottom: 20px;\n"
                            + "  color: white;\n"
                            + "    background: transparent;\n"
                            + "   \">\n"
                            + "  \n"
                            + "      <table style=\"height: 150px; width: 700px; margin-bottom: 10px;\">\n"
                            + "        <tbody>\n"
                            + "          <tr>\n"
                            + "    \n"
                            + "    <td style=\"border-bottom: 1px solid white;\">EVENT NAME :</td>\n"
                            + "            <td style=\"border-bottom: 1px solid white;\">" + eventname + "</td>\n"
                            + "          </tr>\n"
                            + "          <tr>\n"
                            + "            <td style=\"border-bottom: 1px solid white;\">TICKET PRICE:</td>\n"
                            + "            <td style=\"border-bottom: 1px solid white;\" >" + price + " Rs</td>\n"
                            + "          </tr>\n"
                            + "         \n"
                            + "          <tr>\n"
                            + "            <td style=\"border-bottom: 1px solid white;\">Amount paid</td>\n"
                            + "            <td style=\"border-bottom: 1px solid white;\">" + amount + " Rs</td>\n"
                            + "          </tr>\n"
                            + "        </tbody>\n"
                            + "      </table>\n"
                            + "      <hr>\n"
                            + "      <p style=\"margin-top: 0px;\n"
                            + "      margin-bottom: 1rem;\n"
                            + "      height: 51px;\n"
                            + "     width: 550px;\n"
                            + "     \">If you have any questions, contact us at <a href=\"#\" style=\"text-decoration: none;color: lightblue;\">vnstadium@gmail.com</a>.</p>\n"
                            + "    </div>\n"
                            + "  </div>\n"
                            + "</center>\n"
                            + "\n"
                            + "</body>\n"
                            + "</html>";
                    String subject = "VNStadium Services";
                    String to = mail;
                    boolean status = sendMail.sendEmail(to, subject, text);
                    out.println(status);
                }

            }

            //profile
            if (process.equals("Profile")) {
                String mail = session.getAttribute("username").toString();
//             out.print(mail);
                request.setAttribute("process", process);
                request.setAttribute("resultSet", adminService.getProfileData(mail));
                RequestDispatcher view = request.getRequestDispatcher("Content.jsp");
                view.forward(request, response);
            }

        } catch (Exception ex) {
            ex.getMessage();
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
