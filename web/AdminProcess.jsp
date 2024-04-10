<%-- 
    Document   : AdminProcess
    Created on : Dec 29, 2023, 5:08:58 PM
    Author     : Lenovo
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (session.getAttribute("admin") == null) {
        response.sendRedirect("index.jsp");
    }

%>
<!--UserDetails table-->

<c:if test="${process eq 'userDetails'}">
    <div class="table-responsive" style="padding: 10px; margin: 10px;">
        <center><h1>User Details</h1></center>
        <button onclick="AdminFunction('addForm')"  class="btn btn-dark"><i class="fa-solid fa-user-plus"></i></button><br> <br>
        <table class="table table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>name</th>
                    <th>email</th>
                    <th>phone no.</th>
                    <th>password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%                    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("userName")%></td>
                    <td><%= rs.getString("emailId")%></td>
                    <td><%= rs.getString("phoneNumber")%></td>
                    <td><%= rs.getString("password")%></td>
                    <td style="margin:10px;"><button onclick="getEdit(this)" id="<%= rs.getString("userId")%>"  class="btn btn-dark"><i class="fa-solid fa-pen"></i></button>&nbsp;&nbsp;&nbsp;<button  class="btn btn-dark" onclick="deleteUser(this)" id="<%= rs.getString("userId")%>"><i class="fa-solid fa-trash"></i></button></td>
                </tr>

                <% } %>
            </tbody>
        </table>
        <div id="tableDiv" hidden></div>
    </div>
</c:if>

<!--add new user form-->

<c:if test="${process eq 'addForm'}">
    <div style="padding: 10px; margin: 10px;">
        <br>
        <center><h1>Add User Form</h1></center>
        <button onclick="AdminFunction('userDetails')"  class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br><br>

        <form id="addF">
            <div class="form-group">
                <label>name :</label>
                <input class="form-control" type="text" id="name"/></div><br>
            <div class="form-group">
                <label>email :</label>
                <input class="form-control" type="text" id="email"/></div><br>
            <div class="form-group">
                <label>phone :</label>
                <input class="form-control" type="text" id="phone"/></div><br>
            <div class="form-group">
                <label>password :</label>
                <input class="form-control" type="text" id="pass"/></div><br>
            <button onclick=" return AddUser()"  class="btn btn-dark">submit</button>
            <div id="au" hidden></div>
        </form>
    </div>
</c:if>

<!--edit user form-->

<c:if test="${process eq 'getEdit'}">
    <div  style="padding: 10px; margin: 10px;">
        <br>
        <center><h1>Edit User Form</h1></center>
        <button onclick="AdminFunction('userDetails')"  class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br><br>
        <form id="addF">
            <%
                ResultSet us = (ResultSet) request.getAttribute("resultSet");
                while (us.next()) {
            %>
            <input class="form-control" type="hidden" id="id" value="<%= us.getString("userId")%>"/>
            <div class="form-group">
                <label>name :</label>
                <input class="form-control" type="text" id="name" value="<%= us.getString("userName")%>"/></div><br>
            <div class="form-group">
                <label>email :</label>
                <input class="form-control" type="text" id="email" value="<%= us.getString("emailId")%>"/></div><br>
            <div class="form-group">
                <label>phone :</label>
                <input class="form-control" type="text" id="phone" value="<%= us.getString("phoneNumber")%>"/></div><br>
            <div class="form-group">
                <label>password :</label>
                <input class="form-control" type="text" id="pass" value="<%= us.getString("password")%>"/></div><br>
                <% } %>

            <button onclick=" return updateUser()" class="btn btn-dark" >submit</button>
            <div id="uu" hidden></div>
        </form>
    </div>
</c:if>

<!--QueryDetails table-->

<c:if test="${process eq 'queryDetails'}">
    <div class="table-responsive" style="padding: 10px; margin: 10px;">
        <center><h1>Query Details</h1></center>
        <table class="table table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>email</th>
                    <th>Query</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ResultSet qu = (ResultSet) request.getAttribute("resultSet");
                    while (qu.next()) {
                %>
                <tr>
                    <td><%= qu.getString("emailId")%></td>
                    <td><%= qu.getString("query")%></td>
                    <td><button  class="btn btn-dark" onclick="deleteQuery(this)" id="<%= qu.getString("queryId")%>"><i class="fa-solid fa-trash"></i></button></td>
                </tr>

                <% }%>
            </tbody>
        </table>
        <div id="tableDiv" hidden></div>
    </div>
</c:if>

<!--homeDetails page-->  
<c:if test="${process eq 'homeDetails'}">


    <main style="padding: 10px; margin: 50px; justify-content: space-around;">
        <section style="margin-top: 0;" id="statistics" class="statistics">
            <div class="container" data-aos="fade-up">
                <div class="section-title">
                    <h2>Statistics</h2>
                    <p>Statistics</p>
                </div>
                <div>
                    <style>
                        #proCont{
                            display: flex;
                            width: 100%;
                            /*border: 1px solid black;*/
                            height: auto;
                            justify-content: space-between;
                            padding: 20px;
                        }
                        .proPlates{
                            display: flex;
                            width: 20%;
                            border: 1.5px solid black;
                            border-radius: 7px;
                            height: auto;
                            /*padding: 2px 3px;*/
                            overflow: hidden;
                            flex-direction: column;
                        }
                        .proHeadings{
                            width: 100%;
                            background: rgba(20, 20, 20, 0.8);
                            color: #ffc451;
                            font-family: sans-serif;
                            text-align: center;
                            /*font-size: large;*/
                            font-weight: 700;
                            /*font-stretch: condensed;*/
                            padding-top: 10px;
                        }
                        .proDetails{
                            width: 100%;
                            /*background: rgba(20, 20, 20, 0.8);*/
                            /*color: #ffc451;*/
                            font-family: sans-serif;
                            text-align: center;
                            padding: 10px 0;
                            border-top: 1px solid black;
                            /*font-size: large;*/
                            /*font-weight: 600;*/
                            /*font-stretch: condensed;*/
                        }
                        #proBtnCont{
                            display: flex;
                            width: 96%;
                            /*border: 1px solid black;*/
                            margin: 15px;
                            justify-content: center;
                        }
                        #proBtn{
                            display: flex;
                            width: 20%;
                            /*border: 1px solid black;*/
                            border-radius: 5px;
                            justify-content: center;
                            padding: 10px 0;
                            background-color: #ffc451;
                            color: black;
                            cursor: pointer;
                        }
                        #proBtn:hover{
                            background-color: #ffcc6a;
                        }
                    </style>

                    <div id="proCont">
                        <div class="proPlates" id="proFood">
                            <div class="proHeadings"><h5>Users</h5></div>
                            <div class="proDetails">Total Registered: <%= session.getAttribute("userStat")%></div>
                            <div class="proDetails">Organizers: <%= session.getAttribute("OrgStat")%></div>
                        </div>

                        <div class="proPlates" id="proSeats">
                            <div class="proHeadings"><h5>Stadium</h5></div>
                            <div class="proDetails">Total Booked Seats: <%= session.getAttribute("seatStat")%></div>
                            <div class="proDetails">Pending Payment: <%= session.getAttribute("pendingPaymentStat")%></div>
                            <div class="proDetails">Success Payment: <%= session.getAttribute("successPaymentStat")%></div>

                        </div>

                        <div class="proPlates" id="proEvents">
                            <div class="proHeadings"><h5>Events</h5></div>
                            <div class="proDetails">Booked: <%= session.getAttribute("eventStat")%></div>
                        </div>

                        <div class="proPlates" id="proEvents2">
                            <div class="proHeadings"><h5>Staff</h5></div>
                            <div class="proDetails">Total: 50</div>
                            <div class="proDetails">Working: 45</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</c:if>

<!--stadiumDetails page-->  
<c:if test="${process eq 'stadiumDetails'}">
    <div class="table-responsive" style="padding: 10px; margin: 10px;">
        <center><h1>Stadium Details</h1></center>
        <table class="table table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>Event Name</th>
                    <th>Email Address</th>
                    <th>Ticket Price</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>
                <%
                    ResultSet st = (ResultSet) request.getAttribute("resultSet");
                    while (st.next()) {
                %>
                <tr>
                    <td><%= st.getString("eventName")%></td>
                    <td><%= st.getString("emailId")%></td>
                    <td><%= st.getString("ticketPrice")%></td>
                    <td><%= st.getString("totalAmount")%></td>
                    <td><%= st.getString("status")%></td>
                    <td><button  class="btn btn-dark" onclick="deleteSeat(this)" id="<%= st.getString("seatId")%>"><i class="fa-solid fa-trash"></i></button></td>
                </tr>
                <% }%>
            </tbody>
        </table>
        <div id="StadiumDiv" hidden></div>
    </div>
</c:if>

<c:if test="${process eq 'eventDetails'}">
   
    <div class="table-responsive" style="padding: 10px; margin: 10px;">
        <center><h1>Event Details</h1></center>
        <button class="btn btn-dark" onclick="AdminFunction('addEventForm')"><i class="fa-solid fa-calendar-plus"></i></button><br><br>
        <table class="table table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Event Name</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Ticket Price</th>
                    <th>Total Amount</th>
                    <th>Poster URL</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>
                <%
                    ResultSet ers = (ResultSet) request.getAttribute("resultSet");
                    while (ers.next()) {
                %>
                <tr>
                    <td><%= ers.getString("emailId")%></td>
                    <td><%= ers.getString("eventName")%></td>
                    <td><%= ers.getString("startDate")%></td>
                    <td><%= ers.getString("endDate")%></td>
                    <td><%= ers.getString("ticketPrice")%></td>
                    <td><%= ers.getString("totalAmount")%></td>
                    <td><%= ers.getString("imgUrl")%></td>
                    <td><button onclick="getEventEdit(this)" id="<%= ers.getString("eventId")%>"  class="btn btn-dark"><i class="fa-solid fa-pen"></i></button>&nbsp;&nbsp;&nbsp;<button  class="btn btn-dark" onclick="deleteEvent(this)" id="<%= ers.getString("eventId")%>"><i class="fa-solid fa-trash"></i></button></td>

                </tr>

                <% }%>
            </tbody>
        </table>
        <div id="EventDiv" hidden></div>
    </div>
</c:if>

<c:if test="${process eq 'addEventForm'}">
    <div class="container">
        <center><h1>Add Event Form</h1></center>
        <button onclick="AdminFunction('eventDetails')" class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br><br>
        <form id="addF">
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" >
            </div>
            <div class="mb-3">
                <label for="eventname" class="form-label">Event Name</label>
                <input type="text" class="form-control" id="eventname">
            </div>
            <div class="mb-3">
                <label for="poster" class="form-label">Event Poster Url</label>
                <input type="url" class="form-control" id="poster">
            </div>
            <div class="mb-3" >
                <label class="form-label">Event Date</label>
                <div style="display: flex; align-items: center;">
                    <label for="eventdatefrom" class="form-label" >From :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="date" class="form-control w-25" name="eventdatefrom" id="eventdatefrom">&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="eventdateto" class="form-label">To :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="date" class="form-control w-25" name="eventdateto" id="eventdateto"  onchange="totalAmount()">&nbsp;&nbsp;&nbsp;&nbsp;
                </div> 
            </div>
            <div style="display: flex; align-items: center;">
                <div classs="mb-3">
                    <label for="price" class="form-label">Ticket Price For Per Person :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="number" class="form-control w-2" id="price">
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div classs="mb-3">
                    <label for="amount" class="form-label">Total Amount :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" class="form-control w-2" id="amount" title="total amount of studiam" disabled>
                </div>
            </div>
            <button  class="btn btn-outline-warning text-dark mt-3" onclick=" return newEventAdd()">Submit</button>
        </form>
        <div id="status" hidden></div>
    </div>
</c:if>

<c:if test="${process eq 'getEventEdit'}">
    <div class="container">
        <center><h1>Edit Event Form</h1></center>
        <button onclick="AdminFunction('eventDetails')" class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br><br>
        <form id="addF">
            <%
                ResultSet ed = (ResultSet) request.getAttribute("resultSet");
                while (ed.next()) {
            %>
            <input type="hidden" id="eventid" value="<%= ed.getString("eventId")%>"/>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" value="<%= ed.getString("emailId")%>">
            </div>
            <div class="mb-3">
                <label for="eventname" class="form-label">Event Name</label>
                <input type="text" class="form-control" id="eventname" value="<%= ed.getString("eventname")%>">
            </div>
            <div class="mb-3">
                <label for="poster" class="form-label">Event Poster Url</label>
                <input type="url" class="form-control" id="poster" value="<%= ed.getString("imgUrl")%>">
            </div>
            <div class="mb-3" >
                <label class="form-label">Event Date</label>
                <div style="display: flex; align-items: center;">
                    <label for="eventdatefrom" class="form-label" >From :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="date" class="form-control w-25" name="eventdatefrom" id="eventdatefrom"  value="<%= ed.getString("startDate")%>">&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="eventdateto" class="form-label">To :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="date" class="form-control w-25" name="eventdateto" id="eventdateto"  onchange="totalAmount()" value="<%= ed.getString("endDate")%>">&nbsp;&nbsp;&nbsp;&nbsp;
                </div> 
            </div>
            <div style="display: flex; align-items: center;">
                <div classs="mb-3">
                    <label for="price" class="form-label">Ticket Price For Per Person :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="number" class="form-control w-2" id="price" value="<%= ed.getString("ticketPrice")%>">
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div classs="mb-3">
                    <label for="amount" class="form-label">Total Amount :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" class="form-control w-2" id="amount" title="total amount of studiam" value="<%= ed.getString("totalAmount")%>"  disabled>
                </div>
            </div>
            <% }%>
            <button  class="btn btn-outline-warning text-dark mt-3" onclick=" return EventUpdate()">Submit</button>
        </form>
        <div id="status" hidden></div>
    </div>
</c:if>