<%-- 
    Document   : paymentGateway
    Created on : 23-Feb-2024, 11:32:56 am
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
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pay Now</title>
        <link rel="stylesheet" href="assets/css/paymentGateway.css">
    </head>
    <body>
        <div class="containers">
            <div class="payments-forms">
                <div class="cards">
                    <div class="cards-header">
                        <h3 >Payment Details</h3>
                    </div>
                    <div class="cards-bodys">
                        <form id="payments-forms">
                            <!--Email address-->
                            <label for="cardNumber">Email</label>
                            <input type="text" id="email" placeholder="" maxlength="19" value="<%= session.getAttribute("username")%>" required>
                            <!-- Credit card details -->  
                            <label for="cardNumber">Card Number</label>
                            <input type="text" id="carddetails" placeholder="1234 5678 9012 3456" maxlength="19" required>

                            <div class="flexs-containers">
                                <div class="flexs-items">
                                    <label for="expiryDate">Expiry Date</label>
                                    <input type="text" id="mmyy" placeholder="MM / YY" maxlength="7" required>
                                </div>
                                <div class="flexs-items">
                                    <label for="cvv">CVV</label>
                                    <input type="text" id="cvv" placeholder="123" maxlength="4" required>
                                </div>
                            </div>
                            <!-- Credit card Holder name -->  
                            <label for="cardNumber">Card Holder Name:</label>
                            <input type="text" id="cardholder" placeholder="Enter Your name" maxlength="19" required>
                           
                            <div>
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <p class="fw-bold">Total :<%= session.getAttribute("amount")%></p>
                            </div>
                            <!-- Submit button -->
                            <button type="button" id="submit" onclick="return paynow()">Pay Now</button>
                            <div id="pay" hidden></div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="JS-CSS/index.js"></script>
        <script src="assets/js/paymentGatewayStyle.js.js"></script>
    </body>
</html>