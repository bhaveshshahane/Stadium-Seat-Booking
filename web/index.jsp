<%-- 
    Document   : VisitingDashboard
    Created on : Jan 15, 2024, 1:49:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center justify-content-lg-between">

                <h1 class="logo me-auto me-lg-0"><a href="index.jsp">VN STADIUM<span>.</span></a></h1>
                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                        <li><a class="nav-link scrollto" href="#about">About</a></li>
                        <li><a class="nav-link scrollto" href="#services">Services</a></li>
                        <li><a class="nav-link scrollto " href="#galary">Galary</a></li>
                        <li><a class="nav-link scrollto" href="#team">Team</a></li>
                        <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

                <a  class="get-started-btn scrollto" onclick="LogReg()">Login/Register</a>

            </div>
        </header>
        <!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center justify-content-center">
            <div class="container" data-aos="fade-up">

                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
                    <div class="col-xl-6 col-lg-8">
                        <h1>Get SmoothExperience to booking seat<span>.</span></h1>
                        <h2>We are team of active members</h2>
                    </div>
                </div>

                <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-store-line"></i>
                            <h3><a href="#">Comfortable Seats</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-bar-chart-box-line"></i>
                            <h3><a href="#">Top Rated</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-calendar-todo-line"></i>
                            <h3><a href="#">Events</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-paint-brush-line"></i>
                            <h3><a href="#">Food Services</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-database-2-line"></i>
                            <h3><a href="#">Fast booking</a></h3>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Hero -->

        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container" data-aos="fade-up">

                    <div class="row">
                        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                            <img src="assets/img/new_img/org_269436cd02abc439_1588122018000-Edited_Web-Resize-2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
                            <h3>Welcome to VN STADIUM, your premier destination for seamless stadium booking solutions.</h3>
                            <p class="">
                                Welcome to VN STADIUM, your premier destination for seamless stadium booking solutions. At VN STADIUM, we understand the importance of efficient venue management and the significance of creating unforgettable experiences for both event organizers and attendees.

                            </p>
                            <ul>
                                <li><i class="ri-check-double-line"></i> 
                                    A vast selection of stadiums and venues to choose from, tailored to suit a variety of event types and sizes</li>
                                <li><i class="ri-check-double-line"></i> Seamless online booking and reservation management, accessible anytime and anywhere.
                                </li>
                                <li><i class="ri-check-double-line"></i> Flexible scheduling options to accommodate your event dates and times.</li>
                            </ul>

                        </div>
                    </div>

                </div>
            </section>
            <!-- End About Section -->


            <!-- ======= Features Section ======= -->
            <section id="features" class="features">
                <div class="container" data-aos="fade-up">

                    <div class="row">
                        <div class="image col-lg-6" style='background-image: url("assets/img/new_img/cricket-stadium-in-india_99e8bbfec.jpg");' data-aos="fade-right"></div>
                        <div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
                            <div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-receipt"></i>
                                <h4>Stadium Capacity</h4>
                                <p>
                                    Discover venues ranging from intimate arenas to expansive stadiums, accommodating capacities from small gatherings to massive events.</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-cube-alt"></i>
                                <h4>Top Reted Food Service</h4>
                                <p>Enhance your event experience with our convenient food service options, offering a diverse selection of culinary delights to satisfy every palate.</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-images"></i>
                                <h4>VIP Section</h4>
                                <p>Elevate your event with our exclusive VIP section, offering premium seating and luxurious amenities for an unparalleled experience.</p>
                            </div>
                            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
                                <i class="bx bx-shield"></i>
                                <h4>Parking Service</h4>
                                <p>Streamline your event logistics with our hassle-free parking service, providing convenient and secure parking options for all attendees.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!-- End Features Section -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Services</h2>
                        <p>Check our Services</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bxl-dribbble"></i></div>
                                <h4><a href="">Event Booking</a></h4>
                                <p>Simplify event planning with our intuitive stadium booking system, tailored to meet your venue needs.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bx-file"></i></div>
                                <h4><a href="">Seat Booking</a></h4>
                                <p>Effortlessly reserve seats for your next event with our user-friendly stadium seating booking platform.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bx-tachometer"></i></div>
                                <h4><a href="">Parking Service</a></h4>
                                <p>Convenient parking solutions to enhance your stadium experience, ensuring stress-free arrival and departure.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bx-world"></i></div>
                                <h4><a href="">VIP Section</a></h4>
                                <p>Elevate your experience with exclusive access to our VIP section, where luxury meets unparalleled views.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bx-slideshow"></i></div>
                                <h4><a href="">Top Sound & Lighting</a></h4>
                                <p>Experience top-tier sound and lighting systems, setting the stage for unforgettable moments in our stadium.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                            <div class="icon-box" onclick='return needlogin()'>
                                <div class="icon"><i class="bx bx-arch"></i></div>
                                <h4><a href="">Instant Food Corner</a></h4>
                                <p>Satisfy your cravings instantly with our convenient food corner, offering a variety of delicious options for on-the-go stadium enjoyment.</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Services Section -->

            <!-- ======= Cta Section ======= -->
            <section id="cta" class="cta">
                <div class="container" data-aos="zoom-in">

                    <div class="text-center">
                        <h3>Book Your Own Event</h3>
                        <p> We Provide the service to Book your own events | Quick Booking with Fast Payment System.</p>
                        <a class="cta-btn" href="#" onclick="return needlogin()">Book Now</a>
                    </div>

                </div>
            </section>
            <!-- End Cta Section -->

            <!-- ======= Portfolio Section ======= -->
            <section id="galary" class="portfolio">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Galary</h2>
                        <p>Check our Galary</p>
                    </div>

                    <div class="row" data-aos="fade-up" data-aos-delay="100">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".filter-app">App</li>
                                <li data-filter=".filter-card">Card</li>
                                <li data-filter=".filter-web">Web</li>
                            </ul>
                        </div>
                    </div>

                    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/360_F_645358788_Nr0bQp4DMUhVFFUkC5BTuy8b0pe3KtlH.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 1</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/360_F_645358788_Nr0bQp4DMUhVFFUkC5BTuy8b0pe3KtlH.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/TP_V_F3fM1weaYAA2INm.avif" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 3</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/207142522-cricket-stadium-front-view-on-cricket-pitch-or-ball-sport-game-field-grass-stadium-or-circle-arena.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/Narendra_Modi_Stadium_view_from_the_gallery.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 2</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/Narendra_Modi_Stadium_view_from_the_gallery.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/which-is-largest-cricket-stadium-in-world_b9d7c417b.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 2</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/which-is-largest-cricket-stadium-in-world_b9d7c417b.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/Eden-Garden-1280x720.webp" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 2</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/Eden-Garden-1280x720.webp" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/main-image.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 3</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/main-image.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/TOP_VIEW_arun-jaitley-stadium-map_31b99ab9f.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 1</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/TOP_VIEW_arun-jaitley-stadium-map_31b99ab9f.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/VIP_download.jpeg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 3</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/VIP_download.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="assets/img/new_img/Food_mlc-cricket---mango-lassi---lauren-drewes-daniels2.jpeg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 3</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="assets/img/new_img/Food_mlc-cricket---mango-lassi---lauren-drewes-daniels2.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Portfolio Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container" data-aos="fade-up">

                    <div class="row no-gutters">
                        <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start" data-aos="fade-right" data-aos-delay="100"></div>
                        <div class="col-xl-7 ps-4 ps-lg-5 pe-4 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
                            <div class="content d-flex flex-column justify-content-center">
                                <h3>OverView Of VN STADIUM</h3>
                                <p>
                                    Discover premier stadiums and venues for all events, from sports to concerts, with our comprehensive booking system. We provide seamless access to top-tier facilities, ensuring memorable experiences for organizers and attendees alike.</p>
                                <div class="row">
                                    <div class="col-md-6 d-md-flex align-items-md-stretch">
                                        <div class="count-box">
                                            <i class="bi bi-emoji-smile"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="65" data-purecounter-duration="2" class="purecounter"></span>
                                            <p><strong>Happy Clients</strong> Delighting our clients with seamless stadium experiences, where joy meets excellence in every event.</p>
                                        </div>
                                    </div>

                                    <div class="col-md-6 d-md-flex align-items-md-stretch">
                                        <div class="count-box">
                                            <i class="bi bi-journal-richtext"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="2" class="purecounter"></span>
                                            <p><strong>Projects</strong> Revolutionizing stadium experiences through innovative technology and seamless event management.</p>
                                        </div>
                                    </div>

                                    <div class="col-md-6 d-md-flex align-items-md-stretch">
                                        <div class="count-box">
                                            <i class="bi bi-clock"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="35" data-purecounter-duration="4" class="purecounter"></span>
                                            <p><strong>Years of experience</strong> years of expertise in stadium management to elevate your event to new heights</p>
                                        </div>
                                    </div>

                                    <div class="col-md-6 d-md-flex align-items-md-stretch">
                                        <div class="count-box">
                                            <i class="bi bi-award"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="20" data-purecounter-duration="4" class="purecounter"></span>
                                            <p><strong>Awards</strong> Proud recipient of prestigious awards for excellence in stadium management and event services.</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End .content-->
                        </div>
                    </div>

                </div>
            </section>
            <!-- End Counts Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="zoom-in">

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="https://t4.ftcdn.net/jpg/02/58/48/21/360_F_258482163_wmkHGJeGJ2b5mkdNjQV49tAUqQmBl5wX.jpg" class="testimonial-img" alt="">
                                    <h3>STATE LEVEL CRICKET TOURNAMENT</h3>
                                    <h4>25 february to 5 march</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Now You Can Enjoy the STATE LEVEL CRICKET TOURNAMENT On Our VNSTADIUM & Got Free popcorn Service.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3iW5LlwKq7_WVTue6DLMFJ0d_nmm9ZTS-zg&usqp=CAU" class="testimonial-img" alt="">
                                    <h3>WBBL</h3>
                                    <h4>6 march to 11 march</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        We Have WBBL Event At State Level tournament , Book now to get More Tickets.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOeN8jZM4GdU6V_m_ecKhU9uwgb6ClSPyiRQ&usqp=CAU" class="testimonial-img" alt="">
                                    <h3>BBL</h3>
                                    <h4>12 March to 20 March</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        The BBL Coming soon From 12 March , Pre Booking is Started What are you waiting for?
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="data:image/jpeg;base64,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" class="testimonial-img" alt="">
                                    <h3>IPL</h3>
                                    <h4>21 march to 23 march</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        IPL can be Keep Booking Right now ...book early and got free Cola with it.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <img src="https://t4.ftcdn.net/jpg/02/71/74/27/360_F_271742787_fvFutvDou1ryxWmkrbJuheoMjSuthzqD.jpg" class="testimonial-img" alt="">
                                    <h3>Cricket League</h3>
                                    <h4>24 march to 5 April</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        The most wanted Cricket state level tournament is starting from 24 march , pre-book fast cause there may don't have chance to book.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div><!-- End testimonial item -->
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section>
            <!-- End Testimonials Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Team</h2>
                        <p>Check our Team</p>
                    </div>

                    <div class="row" style="justify-content: space-around;">

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="100">
                                <div class="member-img">
                                    <img src="images/blue-user-icon-32.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Shahane Bhavesh</h4>
                                    <span>Chief Executive Officer</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="images/blue-user-icon-32.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Mali Pavan</h4>
                                    <span>Stadium Manager</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="300">
                                <div class="member-img">
                                    <img src="images/blue-user-icon-32.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Kureshi Shaizan</h4>
                                    <span>HR</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Team Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Contact</h2>
                        <p>Contact Us</p>
                    </div>

                    <div>
                        <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.9717051039584!2d72.77868255972855!3d21.153524292494126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04df15a760c8d%3A0x202f5132f3a6aa2d!2sVeer%20Narmad%20South%20Gujarat%20University!5e0!3m2!1sen!2sin!4v1710334713351!5m2!1sen!2sin" frameborder="0" allowfullscreen></iframe>
                    
                    </div>

                    <div class="row mt-5">

                        <div class="col-lg-4">
                            <div class="info">
                                <div class="address">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    <p> Veer Narmad South Gujarat University, Udhana - Magdalla Rd, Surat, Gujarat 395007</p>
                                </div>

                                <div class="email">
                                    <i class="bi bi-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>vnstadium@gmail.com</p>
                                </div>

                                <div class="phone">
                                    <i class="bi bi-phone"></i>
                                    <h4>Call:</h4>
                                    <p>+91 0000000000</p>
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-8 mt-5 mt-lg-0">

                            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" >
                                    </div>
                                    <div class="col-md-6 form-group mt-3 mt-md-0">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" >
                                    </div>
                                </div>

                                <div class="form-group mt-3">
                                    <textarea class="form-control" id="message" name="message" rows="5" placeholder="Message"></textarea>
                                </div>

                                <div class="text-center"><button type="submit" onclick="return GetQuery()">    <i class="fa-solid fa-paper-plane"></i> Send Message</button></div>
                            </form>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Contact Section -->
        </main>
        <!-- End #main -->

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
        <!-- End Footer -->

        <div id="preloader"></div>
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

    </body>

</html>
