<%-- 
    Document   : Admin
    Created on : Dec 29, 2023, 4:48:14 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("admin") == null) {
        response.sendRedirect("index.jsp");
    }

%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>vnstadium.sports</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/new_img/stock-vector--d-cricket-field-with-green-grass-red-ball-and-bat-icon-isolated-on-white-background-vector-1521184814-removebg-preview.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link href="JS-CSS/css/adminpanel.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <link href="//cdn.datatables.net/2.0.2/css/dataTables.dataTables.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
        <script src="//cdn.datatables.net/2.0.2/js/dataTables.min.js"></script>
        <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">

    </head>

    <body onload="AdminFunction('homeDetails')">

        <!-- ======= Header ======= -->
        <div>
            <header id="header">
                <div class="container d-flex align-items-center justify-content-lg-between">

                    <h1 class="logo me-auto me-lg-0"><a href="index.html">VN STADIUM<span>.</span></a></h1>

                    <nav id="navbar" class="navbar order-last order-lg-0">
                        <ul>
                            <li id="homee"><a href="#" onclick="AdminFunction('homeDetails')"> Home </a></li>
                            <li id="aboutee"><a href="#" onclick="AdminFunction('userDetails')">User</a></li>
                            <li id="servicess"><a href="#" onclick="AdminFunction('stadiumDetails')">Stadium</a></li>
                            <li id="galaryy"><a href="#" onclick="AdminFunction('queryDetails')">Query</a></li>
                            <li id="eventorg"><a href="#" onclick="AdminFunction('eventDetails')">Event Details</a></li>

                        </ul>
                        <i class="bi bi-list mobile-nav-toggle"></i>
                    </nav><!-- .navbar -->
                    <a class="get-started-btn scrollto text-white" onclick="logOut('adminLogout')"><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>

                </div>
            </header><!-- End Header -->
        </div>
        <main id="main">  
            <div class="contents" id="admin"></div>
        </main>
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>VN Stadium</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by <a href="#">VN STADIUM TEAM</a>
                </div>
            </div>
        </footer>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="JS-CSS/index.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script src="JS-CSS/js/adminpanel.js"></script>
    </body>

</html>
