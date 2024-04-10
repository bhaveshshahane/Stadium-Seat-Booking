<%-- 
    Document   : SeatBookingForm
    Created on : 17-Feb-2024, 10:22:26 pm
    Author     : pavan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAYMENT PAGE</title>
        <link rel="stylesheet" href="assets/css/seatBookingStyle.css">
        <<script src="JS-CSS/index.js"></script>

    </head>
    <body>
        <button onclick="DashBoardLoad('eventload')"  class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br>

        <div id="wrapper" >
            <h3>Tickets to the Greatest Concert Ever!</h3>
            <p>Get tickets today before it's too late!</p>
            <hr>
            <div id="co">
                <form>
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                        while (rs.next()) {
                    %>
                    <div class="formDiv">
                        <div id="nameTitle">
                            <p>Event Name*</p>
                        </div>
                        <div id="inputsDiv">
                            <input class="inpF" type="text" id="eventname" value="<%= rs.getString("eventName")%>" disabled>
                        </div>
                    </div>

                    <div class="formDiv">
                        <div id="nameTitle">
                            <p>Email*</p>
                        </div>
                        <div id="inputsDiv">
                            <input class="inpF" type="text" id="email" value="<%= session.getAttribute("username")%>" disabled>
                        </div>
                    </div>
                    <div class="formDiv">
                        <div>
                            <label for="eventdatefrom">Event start :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="date" class="inpF" id="eventdatefrom" value="<%= rs.getString("startDate")%>" disabled> <br>
                            <label for="eventdateto">   Event End   :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="date" class="inpF" id="eventdateto" value="<%= rs.getString("endDate")%>" disabled>        
                        </div> 
                    </div>
                    <div class="formDiv">
                        <div id="nameTitle">
                            <p>Price Of Tickets*</p>
                        </div>
                        <div id="inputsDiv">
                            <input class="inpF" type="number" id='price' value="<%= rs.getString("ticketPrice")%>" disabled>
                        </div>
                    </div>

                    <% }%>
                    <div class="formDiv">
                        <div id="nameTitle">
                            <p>Number Of Tickets*</p>
                        </div>
                        <div id="inputsDiv">
                            <input class="inpF" type="number" id='ticket' onchange="totalPrice()" placeholder="number of tickets">
                        </div>
                    </div>

                    <div class="formDiv">
                        <div id="nameTitle">
                            <p>Total Amount*</p>
                        </div>
                        <div id="inputsDiv">
                            <input class="inpF" type="text" id='amount' disabled>
                        </div>
                    </div>
                    <center><button style='width: 40%; color: white;' class="btn btn-warning mt-3" onclick=" return ticketBook('seatbook')"><i class="fa-solid fa-paper-plane"></i> BOOK</button></center>

                </form>
                <div id="seatStatus"></div>
                <div id="paymentdiv"></div>
            </div><!-- container -->
            <hr>

        </div><!-- wrapper -->
        <script src='assets/js/seatBookingStyle.js'></script>
    </body>
</html>
