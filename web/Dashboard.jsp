<%-- 
    Document   : Dashboard.jsp
    Created on : Dec 18, 2023, 8:29:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("username") == null) {
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

    </head>

    <body onload="DashBoardLoad('homeload')">

        <!-- ======= Header ======= -->

        <header id="header">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="index.html">VN STADIUM<span>.</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li id="homee"><a href="#" onclick="DashBoardLoad('homeload')"> Home </a></li>
                        <li id="aboutee"><a href="#" onclick="DashBoardLoad('about')">About</a></li>
                        <li id="servicess"><a href="#" onclick="DashBoardLoad('Services')">Services</a></li>
                        <li id="galaryy"><a href="#" onclick="DashBoardLoad('Galary')">Galary</a></li>
                        <li id="teamm"><a href="#" onclick="DashBoardLoad('Team')">Team</a></li>
                        <li id="contactt"><a href="#" onclick="DashBoardLoad('Contact')">Contact</a></li>

                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <div>
                    <style>
                        .proBtn{
                            margin: 0px 15px 0px 0px;
                            cursor: pointer;
                            border: 1.5px solid #e7e7e7;
                            border-radius: 100%;
                            padding: 8px 10px;
                            color: #ffc451;
                        }
                        .proBtn:hover{
                            background-color: #e7e7e7;
                            color: rgba(0, 0, 0, 0.8);
                        }

                    </style> 
                    <a class="proBtn" onclick="DashBoardLoad('Profile')" ><i class="bi-camera"></i></a>
                    <a class="get-started-btn scrollto" onclick="logOut('userLogout')" style="cursor: pointer;"><i class="fa-solid bi-arrow-left-circle"></i> Logout</a>
                </div>


            </div>
        </header><!-- End Header -->
        <div id="log"></div>
        <main id="main">  
            <div style="width: 100%;" id="ajx"></div>
        </main>
        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-info">
                                <h3>VN STADIUM<span>.</span></h3>
                                <p> Veer Narmad South Gujarat University, Udhana - Magdalla Rd, Surat, Gujarat 395007
                                    <br><br>
                                    <strong>Phone:</strong> +91 0000000000<br>
                                    <strong>Email:</strong> vnstadium@gmail.com<br>
                                </p>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">gallery</a></li>

                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">team</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">contact</a></li>

                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter" >
                            <img src="images/88961.png" alt="img" style="height: 250px;width: 250px ; background-color: #ffffff; border-radius: 10px"/>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>VN Stadium</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by <a href="#">VN STADIUM TEAM</a>
                </div>
            </div>
        </footer>
        <a class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
       
    </body>

</html>

