<%-- 
    Document   : Content
    Created on : Dec 21, 2023, 10:20:22 PM
    Author     : Admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }

%>

<%    String process = (String) request.getAttribute("process");
    if (process == "homeload") {
%>

<h1>home</h1>
<% }%>

<c:if  test="${process eq 'homeload'}">
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


</c:if>
<c:if  test="${process eq 'about'}">
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

</c:if>
<c:if  test="${process eq 'Services'}">
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Services</h2>
                <p>Check our Services</p>
            </div>

            <div class="row">
                <div  onclick="return DashBoardLoad('eventorg')" class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bxl-dribbble"></i></div>
                        <h4><a href="">Event Booking</a></h4>
                        <p>Simplify event planning with our intuitive stadium booking system, tailored to meet your venue needs.</p>
                    </div>
                </div>

                <div onclick="return DashBoardLoad('eventload')" class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-file"></i></div>
                        <h4><a href="">Seat Booking</a></h4>
                        <p>Effortlessly reserve seats for your next event with our user-friendly stadium seating booking platform.</p>
                    </div>
                </div>

                <div onclick="return ServicesLoad('parkingService')" class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-tachometer"></i></div>
                        <h4><a>Parking Service</a></h4>
                        <p>Convenient parking solutions to enhance your stadium experience, ensuring stress-free arrival and departure.</p>
                    </div>
                </div>

                <div onclick="return ServicesLoad('vipSeat')" class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-world"></i></div>
                        <h4><a href="#">VIP Section</a></h4>
                        <p>Elevate your experience with exclusive access to our VIP section, where luxury meets unparalleled views.</p>
                    </div>
                </div>

                <div onclick="return ServicesLoad('soundAndLight')" class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-slideshow"></i></div>
                        <h4><a href="#">Top Sound & Lighting</a></h4>
                        <p>Experience top-tier sound and lighting systems, setting the stage for unforgettable moments in our stadium.</p>
                    </div>
                </div>

                <div onclick="return ServicesLoad('instantFood')" class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-arch"></i></div>
                        <h4><a>Instant Food Corner</a></h4>
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
                <a class="cta-btn" onclick="return DashBoardLoad('eventorg')" >Book Now</a>
            </div>

        </div>
    </section>
    <!-- End Cta Section -->

</c:if>

<c:if  test="${process eq 'Galary'}">
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
</c:if>

<c:if  test="${process eq 'Team'}">

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

</c:if>

<c:if  test="${process eq 'Contact'}">

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

                        <div class="text-center"><button type="submit" onclick="return GetQuery()"><i class="fa-solid fa-paper-plane"></i> Send Message</button></div>
                    </form>
                </div>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->

</c:if>  



<c:if  test="${process eq 'eventorg'}">

    <button onclick="DashBoardLoad('Services')"  class="btn btn-dark"><i class="fa-solid fa-circle-arrow-left"></i></button><br>
    <form id="addF">
    <div class="container mt-3"     style="
         display: flex;
         width: 100%;
         justify-content: center;
         align-items: center;
         flex-direction: column;
         gap: 10px;
         padding: 25px;
         ">
        <h1>Event Booking Form</h1>
        <hr style="width: 80%; height: 5px;">
        <div style='display: flex; gap: 15px'>

            <div class="col-sm-6">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" value="<%= session.getAttribute("username")%>" disabled>
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
                        <input type="date" class="form-control w-25" name="eventdateto" id="eventdateto" onchange="totalAmount()">&nbsp;&nbsp;&nbsp;&nbsp;
                    </div> 
                </div>
                <div style="display: flex; align-items: center;">
                    <div classs="mb-3">
                        <label for="price" class="form-label">Per Person Price:-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="number" class="form-control w-2" id="price">
                    </div>&nbsp;&nbsp;&nbsp;&nbsp;
                    <div classs="mb-3">
                        <label for="amount" class="form-label">Total Amount :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" class="form-control w-2" id="amount" title="total amount of studiam" disabled>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="mb-3">
                    <label for="cardnumber" class="form-label">Card Number</label>
                    <input type="number" class="form-control" id="cardnumber">
                </div>
                <div class="mb-3">
                    <label for="holdername" class="form-label">Holder Name</label>
                    <input type="text" class="form-control" id="holdername">
                </div>
                <div class="mb-3" >
                    <label class="form-label">Expiration Date</label>
                    <div style="display: flex; align-items: center;">
                        <label for="month" class="form-label">Month/Year :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="month" class="form-control w-50" id="month">&nbsp;&nbsp;&nbsp;&nbsp;
                        <!--         <label for="year" class="form-label">Year :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="year" class="form-control w-25" id="year">&nbsp;&nbsp;&nbsp;&nbsp;-->
                    </div> 
                </div>           
                <div classs="mb-3">
                    <label for="cvv" class="form-label">CVV :-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="number" class="form-control w-50" id="cvv">
                </div>           
            </div>
        </div>
        <hr style='width: 80%; height: 5px;'>
        <button style='width: 40%;' class="btn btn-outline-warning text-dark mt-3" onclick=" return eventManage()"><i class="fa-solid fa-paper-plane"></i> Submit</button>

    </div>
</form>
    <br><br>

    <div id="status" hidden></div>


</c:if>


<c:if  test="${process eq 'eventload'}">
    <!-- ======= event load Section ======= -->
    <section id="services" class="services">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Events</h2>
                <p>Current Events</p>
            </div>

            <div class="row">
                <div class="containerr" style="display: flex; padding: 10px; flex-wrap: wrap; ">
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                        while (rs.next()) {
                    %>

                    <div style="margin-bottom: 50px;" onclick="return ServicesLoad('seatBooking', this)" eid="<%= rs.getString("eventId")%>" class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-box">
                            <img src="<%= rs.getString("imgUrl")%>" height="300px" width="250px" />
                            <h4><a href=""><%= rs.getString("eventName")%></a></h4>
                            <p>Event Start From<%= rs.getString("startDate")%> To <%= rs.getString("endDate")%></p>
                        </div>
                    </div>
                    <% }%>
                </div>

            </div>

        </div>
    </section>
    <!-- End event load Section -->

</c:if>


<c:if  test="${process eq 'Profile'}">
    <!-- ======= Profile Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Profile</h2>
                <p>User Profile</p>
            </div>
            <style>
                .proPlateEdit{
                    display: flex;
                    width: 100%;
                    padding: 0 10px;
                    margin: 0;
                    justify-content: flex-end;
                }
                .proEdit{
                    color: black;
                    font-size: 15px;
                    cursor: pointer;
                    border: 1.5px solid rgba(20, 20, 20, 0.8);
                    border-radius: 100%;
                    padding: 10px;
                }
                .proEdit:hover{
                    background-color: rgba(20, 20, 20, 0.8);
                }
            </style>
            <div class="proPlateEdit">
                <a class="proEdit"><i id="proPencil" class="bi-pencil-fill"></i></a>
            </div>
            <div class="row mt-5">
                <div class="col-md-4">

                    <div class="info">
                        <%
                            ResultSet prs = (ResultSet) request.getAttribute("resultSet");
                            while (prs.next()) {
                        %>

                        <div class="address">
                            <i class="bi bi-emoji-smile"></i>
                            <h4>User Name</h4>
                            <p><%= prs.getString("userName")%></p>
                        </div>
                        <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>Email:</h4>
                            <p><%= prs.getString("emailId")%></p>
                        </div>
                        <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>Phone:</h4>
                            <p>+<%= prs.getString("phoneNumber")%></p>
                        </div>
                        <% }%>
                    </div>

                </div>
                <div class="col-lg-8 mt-5 mt-lg-0">
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
                            width: 30%;
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
                            padding: 15px 0;
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
                            <div class="proHeadings"><h5>Food Corner</h5></div>
                            <div class="proDetails">Booked: 2</div>
                        </div>

                        <div class="proPlates" id="proSeats">
                            <div class="proHeadings"><h5>Your Seats</h5></div>
                            <div class="proDetails">Booked: 1</div>
                        </div>

                        <div class="proPlates" id="proEvents">
                            <div class="proHeadings"><h5>Your Events</h5></div>
                            <div class="proDetails">Booked: 4</div>
                        </div>
                    </div>

                    <div id="proBtnCont">
                        <div id="proBtn">
                            Edit Profile
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Profile Section -->

</c:if>    

<c:if  test="${process eq 'instantFood'}">

    <!-- Start Food Service Section -->

    <style>
        .containo{
            display: flex;
            width: 100%;
            height: 1000px;
            padding: 5px;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
            background-color: rgba(225, 225, 225, 0.2);
            padding-bottom: 50px
                /*border: 1px solid black;*/
        }

        .heading{
            display: flex;
            width: 100%;
            height: 100px;
            padding: 65px 65px 0 65px;
            align-items: center;
            /* padding: 5px 5px; */
        }

        .main{
            display: flex;
            white-space: nowrap;
            width: 85%;
            height: 309px;
            gap: 15px;
            padding: 15px 9px;
            overflow-x: auto;
            overflow-y: hidden;
            border: 1.5px solid rgba(178, 178, 178, 0.15);
            border-radius: 10px;
            background-color: rgba(145, 145, 145, 0.1);
        }

        .main::-webkit-scrollbar{
            display: none;
        }

        .mainHeading{
            display: flex;
            width: 100%;
            height: 100px;
            padding: 15px 100px;
            font-size: 32px;
            font-weight: 500;
            align-items: end;
        }

        .cards{
            display: inline-flex;
            width: 170px;
            height: 100%;
            padding: 5px;
            flex-direction: column;
            border: 1px solid rgba(134, 131, 131, 0.2);
            border-radius: 10px;
            background-color: rgba(254, 251, 251, 0.99);
            box-shadow: 4px 4px 5px 0px rgba(134, 131, 131, 0.5);
        }

        .imgDiv{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 70%;
            border: 1.5px solid rgba(193, 193, 193, 0.9);
            border-radius: 10px;
            background-color: rgba(182, 181, 181, 0.6);
            cursor: pointer;
        }

        .imgDiv:hover{
            overflow: hidden;
        }

        .descriptionDiv{
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            height: 30%;
            border-radius: 10px;
            padding: 5px;

            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .nameDiv{
            width: 70%;
            height: 100%;
            font-size: 18px;
            padding: 2px;
            text-overflow: ellipsis;
            overflow: hidden;
            width: 150px;
            height: auto;
            white-space: nowrap;
            justify-content: flex-start;
            /* border: 1px solid black; */
        }

        .nameDiv:hover{
            overflow: scroll;
            text-overflow: initial;
        }

        .nameDiv::-webkit-scrollbar{
            display: none;
        }

        .detailDiv{
            display: flex;
            justify-content: end;
            width: 30%;
            height: auto;
            padding: 3px;
            opacity: 0.8;
            /* border: 1px solid black; */
            font-size: 14px;
            color: rgb(99, 99, 99);
        }
        #icon{
            cursor: pointer;
            font-size: 20px;
            color: black;

        }
    </style>

    <div class="containo" class="container" data-aos="fade-up">
        <div class="heading">
            <div class="section-title">
                <h2>Food Service</h2>
                <p>Instant Food</p>
            </div>
        </div>
        <div class="mainHeading">FastFood</div>
        <div class="main">
            <div class="cards">
                <img class="imgDiv" src="images/foodImages/chad-montano-MqT0asuoIcU-unsplash.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Pizza</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img class="imgDiv" src="images/foodImages/logan-weaver-lgnwvr-qgZRZI-pKgM-unsplash.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">French Fries</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img class="imgDiv" src="images/foodImages/sahand-hoseini-BMVAYjPf6mU-unsplash.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Pizza Cube</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img class="imgDiv" src="images/foodImages/premium_photo-1676049461933-28e3e6ee359c.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Popcorn</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img alt="peanut-butter" class="imgDiv" src="images/foodImages/20191125-chocolate-fudge-keto-cookies-delish-ehg-5349-jpg-1575664487.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Cookie</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img alt="peanut-butter" class="imgDiv" src="images/foodImages/blt-egglets1-1659211773.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Burger</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
        </div>


        <div class="mainHeading">Juice</div>
        <div class="main">
            <div class="cards">
                <img alt="peanut-butter" class="imgDiv" src="images/foodImages/green-smoothie-vertical-64d54a0ee1bbd.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Elaichi Flavoured Milk</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
            <div class="cards">
                <img alt="peanut-butter" class="imgDiv" src="images/foodImages/peanut-butter-banana-smoothie-lead-64e6355ef32bd.jpg">
                <div class="descriptionDiv">
                    <div class="nameDiv">Banana Milk shake</div>
                    <div class="detailDiv">
                        <i onclick="return click_food()" id="icon" class="ri-shopping-cart-2-line"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> 

    <!-- End Food Service Section -->

</c:if>

<c:if  test="${process eq 'parkingService'}">

    <style>
        /*        body{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
              }*/

        .containerre {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            height: auto;
            padding: 10px;
            padding-left: 25px;
            background-color: rgba(99, 99, 99, 0.05);
        }

        .sections {
            width: 95%;
            height: 90vh;
            border: 1px solid black;
            padding: 0;
            margin: 50px 0;
            border-radius: 18px;
            overflow: hidden;
            background-color: white;
            box-shadow: 0.7px 0.7px 5px grey;

        }

        .parkingRates {
            background-color: rgb(197, 233, 156);
        }

        .parkingRules {
            background-color: rgb(156, 215, 233);
        }

        .headinggs {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            width: 100%;
            height: 100px;
            /* background-color: #e29191c6; */
            border: 1px solid black;
            color: #ffc451;
            padding-left: 100px;
            background-color: rgba(20, 20, 20, 0.8);
            font-size: 18px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
                sans-serif;
        }

        #descriptionContent {
            display: flex;
            width: 100%;
            height: 85%;
            padding: 30px;

            /* background-color: #883232e0; */
        }

        .imgDiv {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60%;
            height: 100%;
            /* background-color: grey; */
            background-image: url("images/parkingImages/parking_image1.jpg");
            background-size: cover;
            overflow: hidden;
            object-fit: cover;
            background-position: center;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .descriptionDiv {
            display: flex;
            flex-direction: column;
            /*gap: 10px;*/
            font-size: 16px;
            width: 40%;
            height: 100%;
            justify-content: center;
            /*align-items: center;*/
            font-family: Calibri, "Trebuchet MS", sans-serif;
            /*padding: 5px 20px;*/
        }

        #smallHeading {
            font-size: 28px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 600;
            align-self: flex-start;
        }

        #mainParking {
            background-image: url("images/parkingImages/mainParkingImg.png");
        }

        #altParking {
            background-image: url("images/parkingImages/altParkingImg.png");
        }

        #locationSections {
            height: auto;
        }

        #locationContent {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 130vh;
        }

        #locationMainHeading{
            width: 100%;
            height: 100px;
        }

        .locationHeadings {
            width: 100%;
            height: 10%;
            display: flex;
            justify-content: space-around;
            align-items: center;
            font-size: 28px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 600;
        }

        .locationWrapper {
            display: flex;
            justify-content: space-around;
            padding: 20px 0;
            width: 100%;
            height: 60%;
        }

        .locationImgDiv {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid rgb(99, 99, 99);
            border-radius: 18px;
            overflow: hidden;
            filter: drop-shadow(5px 5px 5px grey);
            width: 47%;
            background-size: cover;
            object-fit: cover;
            background-position: center;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .assign {
            display: flex;
            width: 100%;
            height: 39%;
            border-top: 1px solid black;
            padding-top: 15px;
        }

        .assignDiv {
            display: flex;
            flex-direction: column;
            width: 50%;
            height: 100%;
            padding: 0px 25px;
            justify-content: space-evenly;
            font-family: cursive;
        }

        #forImg2 {
            border-left: 1px solid black;
        }

        .colorSpot {
            width: 22px;
            height: 22px;
            border: none;
            background-color: grey;
            border-radius: 50%;
        }

        .innerAssignDiv {
            display: flex;
            justify-content: space-between;
        }

        #firstColor {
            background-color: #e37573;
        }

        #secondColor {
            background-color: #fbb969;
        }

        #thirdColor {
            background-color: #d3a2d8;
        }

        #forthColor {
            background-color: #64bbe3;
        }

        #fifthColor {
            background-color: #aed058;
        }

        #sixthColor {
            background-color: #ae8f73;
        }

        #seventhColor {
            background-color: #589caf;
        }

        #altColor {
            background-color: #0f80d0;
        }

        #parkingRules {
            height: auto;
        }

        #rulesHeading {
            height: 7rem;
        }

        #rulesContent {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 180vh;
        }

        #parkingRulesSmallHeading {
            display: flex;
            width: 100%;
            align-items: end;
            height: 7%;
            font-size: 28px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 600;
            padding: 0px 100px;
        }

        .rulesWrapper {
            display: flex;
            justify-content: space-between;
            width: 100%;
            height: 93%;
            padding: 20px;
            /* border: 1px solid black; */
        }

        .rulesParts {
            height: 100%;
            /* border: 1px solid black; */
        }

        #rulesListDiv {
            display: flex;
            width: 60%;
            flex-direction: column;
            justify-content: space-evenly;
            padding: 5px 15px;
            font-size: 16px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 500;
        }

        span {
            font-size: 20px;
            font-weight: 550;
        }

        #svgImgDiv {
            display: flex;
            width: 40%;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
        }

        .SVG {
            width: 425px;
            height: 35%;
        }

        #firstSVG {
            background-image: url("images/parkingImages/123.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        #secondSVG {
            background-image: url("images/parkingImages/parkingCarsRules.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            border-radius: 18px;
            background-size: 430px;
        }
    </style>

    <div class="containerre">
        <div id="parkingDescription" class="sections">
            <div id="descriptionHeading" class="headinggs">
                <h1>Parking Description</h1>
            </div>
            <div id="descriptionContent" class="content">
                <div class="imgDiv"></div>
                <div class="descriptionDiv">
                    <p id="smallHeading">Description</p>
                    <p>
                        Our stadium parking service provides convenient and accessible
                        parking options for all visitors. With multiple parking lots
                        available, attendees can easily find a spot close to the stadium
                        entrance. Each parking lot is clearly marked and designated,
                        ensuring smooth traffic flow and organized parking.
                    </p>
                    <p>
                        Our user-friendly website provides detailed information about
                        parking rates, rules, and regulations, as well as the availability
                        of each parking lot.
                    </p>
                    <p>
                        Whether you're attending a game, concert, or other event at the
                        stadium, our parking service ensures a hassle-free experience from
                        the moment you arrive.
                    </p>
                </div>
            </div>
        </div>

        <div id="locationSections" class="sections">
            <div id="locationMainHeading" class="headinggs">
                <h1>Parking Location</h1>
            </div>
            <div id="locationContent" class="content">
                <div class="locationHeadings">
                    <p>Parking Location</p>
                    <p>Alternative Location</p>
                </div>
                <div class="locationWrapper">
                    <div id="mainParking" class="locationImgDiv"></div>
                    <div id="altParking" class="locationImgDiv"></div>
                </div>
                <div class="assign">
                    <div id="forImg1" class="assignDiv">
                        <div class="innerAssignDiv">
                            <p>zone Name: A</p>
                            <p>price: 149rs/hr</p>
                            <div id="firstColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: C</p>
                            <p>price: 149rs/hr</p>
                            <div id="secondColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: E</p>
                            <p>price: 149rs/hr</p>
                            <div id="thirdColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: F</p>
                            <p>price: 149rs/hr</p>
                            <div id="forthColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: G</p>
                            <p>price: 149rs/hr</p>
                            <div id="fifthColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: H</p>
                            <p>price: 149rs/hr</p>
                            <div id="sixthColor" class="colorSpot"></div>
                        </div>
                        <div class="innerAssignDiv">
                            <p>zone Name: J</p>
                            <p>price: 149rs/hr</p>
                            <div id="seventhColor" class="colorSpot"></div>
                        </div>
                    </div>

                    <div id="forImg2" class="assignDiv">
                        <div class="innerAssignDiv">
                            <p>zone Color: blue</p>
                            <p>price: 199rs/hr</p>
                            <div id="altColor" class="colorSpot"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="parkingRules" class="sections">
            <div id="rulesHeading" class="headinggs">
                <h1>Parking Rules and Regulations</h1>
            </div>
            <div id="rulesContent" class="content">
                <p id="parkingRulesSmallHeading">PakingRules:</p>
                <div class="rulesWrapper">
                    <div id="rulesListDiv" class="rulesParts">
                        <p>
                            <span>1. No Overnight Parking:</span>
                            Vehicles parked overnight will be subject to towing at the
                            owner's expense. This rule ensures that parking spaces are
                            available for event attendees and prevents congestion in the
                            parking area.
                        </p>
                        <p>
                            <span>2. Designated Parking Areas:</span> Vehicles must be
                            parked only in designated parking areas. Unauthorized parking in
                            restricted zones, such as fire lanes or reserved spots, may
                            result in fines or towing.
                        </p>
                        <p>
                            <span>3. No Tailgating:</span> Tailgating activities, including
                            barbecuing or consuming alcohol, are not permitted in the
                            parking lots. This rule helps maintain cleanliness and safety in
                            the parking area.
                        </p>
                        <p>
                            <span>4. Speed Limit:</span> The speed limit in the parking area
                            is 10 miles per hour. Drivers must adhere to this limit to
                            ensure the safety of pedestrians and other vehicles.
                        </p>
                        <p>
                            <span>5. No Solicitation:</span> Solicitation, including selling
                            goods or services, distributing flyers, or panhandling, is
                            prohibited in the parking lots. This rule helps maintain a
                            peaceful environment for event attendees.
                        </p>
                        <p>
                            <span>6. Accessible Parking:</span> Designated accessible
                            parking spaces are available for individuals with disabilities.
                            Vehicles parked in these spaces must display a valid accessible
                            parking permit.
                        </p>
                        <p>
                            <span>7. Parking Attendants:</span> Follow instructions from
                            parking attendants or signage regarding parking procedures and
                            directions. Cooperation with parking staff helps ensure smooth
                            traffic flow and efficient parking.
                        </p>
                        <p>
                            <span>8. Vehicle Security:</span> The stadium is not responsible
                            for any loss or damage to vehicles parked on the premises.
                            Visitors are encouraged to lock their vehicles and secure
                            valuables to prevent theft or vandalism.
                        </p>
                        <p>
                            <span>9. No Reentry:</span> Once parked, vehicles cannot exit
                            and reenter the parking area without paying the parking fee
                            again. This rule helps manage traffic flow and ensures fairness
                            for all attendees.
                        </p>
                        <p>
                            <span>10. Compliance with Local Laws:</span> All parking must
                            comply with local laws and regulations. Violations may result in
                            fines or penalties imposed by law enforcement authorities.
                        </p>
                    </div>
                    <div id="svgImgDiv" class="rulesParts">
                        <div id="firstSVG" class="SVG"></div>
                        <div id="secondSVG" class="SVG"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>
<c:if  test="${process eq 'vipSeat'}">
    <style>
        /*        body{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
              }*/

        .containerre {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            height: auto;
            padding: 10px;
            padding-left: 25px;
            background-color: rgba(99, 99, 99, 0.05);
        }

        .sections {
            width: 95%;
            height: 90vh;
            border: 1px solid black;
            padding: 0;
            margin: 50px 0;
            border-radius: 18px;
            overflow: hidden;
            background-color: white;
            box-shadow: 0.7px 0.7px 5px grey;

        }


        .headinggs {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            width: 100%;
            height: 100px;
            /* background-color: #e29191c6; */
            border: 1px solid black;
            color: #ffc451;
            padding-left: 100px;
            background-color: rgba(20, 20, 20, 0.8);
            font-size: 18px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
                sans-serif;
        }

        #descriptionContent {
            display: flex;
            width: 100%;
            height: 85%;
            padding: 30px;

            /* background-color: #883232e0; */
        }

        .imgDiv {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60%;
            height: 100%;
            /* background-color: grey; */
            background-image: url("images/VIP IMAGES/VIP-box.jpg");
            background-size: cover;
            overflow: hidden;
            object-fit: cover;
            background-position: center;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .descriptionDiv {
            display: flex;
            flex-direction: column;
            /*gap: 10px;*/
            font-size: 16px;
            width: 40%;
            height: 100%;
            justify-content: center;
            /*align-items: center;*/
            font-family: Calibri, "Trebuchet MS", sans-serif;
            /*padding: 5px 20px;*/
        }

        #smallHeading {
            font-size: 28px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 600;
            align-self: flex-start;
        }


        #VIPsection {
            height: 1000px;
        }

        #VIPHeading {
            height: 7rem;
        }

        #VIPContent {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 180vh;
        }



        .VIPWrapper {
            display: flex;
            justify-content: space-between;
            width: 100%;
            height: 93%;
            padding: 20px;
            /* border: 1px solid black; */
        }

        .VIPParts {
            height: 100%;
            /* border: 1px solid black; */
        }

        #VIPListDiv {
            display: flex;
            width: 60%;
            flex-direction: column;
            /*justify-content: space-evenly;*/
            padding: 5px 15px;
            font-size: 22px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 500;
        }



        #svgImgDiv {
            display: flex;
            width: 40%;
            flex-direction: column;
            /*justify-content: space-around;*/
            /*align-items: center;*/
        }

        .SVG {

            width: 90%;
            height: 80%;
        }


        #secondSVG {
            background-image: url("images/VIP IMAGES/VIP3.jpeg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            border-radius: 18px;
        }

    </style>

    <div class="containerre">
        <div id="VIPDescription" class="sections">
            <div id="descriptionHeading" class="headinggs">
                <h1>VIP SECTION</h1>
            </div>
            <div id="descriptionContent" class="content">
                <div class="imgDiv"></div>
                <div class="descriptionDiv">
                    <p id="smallHeading">Description</p>
                    <p>
                        The VIP section of the stadium offers an unparalleled experience for those seeking luxury and exclusivity. 
                        From plush, leather seating to personalized service, every aspect is tailored to cater to the discerning tastes of VIP patrons. 
                        With prime views of the field or stage, VIP guests can immerse themselves in the action while enjoying gourmet cuisine and premium beverages from dedicated concession stands. 

                    </p>
                    <p>
                        In the VIP section, opulence meets convenience, offering a seamless blend of luxury and practicality. 
                        VIP ticket holders enjoy priority access to parking facilities and dedicated entrances, 
                        allowing for swift entry and exit from the stadium. Inside, the atmosphere exudes sophistication, 
                        with meticulously designed spaces adorned with upscale furnishings and decor. 

                    </p>


                </div>
            </div>
        </div>

        <div id="VIPsection" class="sections">
            <div id="VIPHeading" class="headinggs">
                <h1>OVERVIEW OF VIP SEATING</h1>
            </div>
            <div id="rulesContent" class="content">
                <div class="VIPWrapper">
                    <div id="VIPListDiv" class="VIPParts">
                        <p>
                            The VIP seating area in the stadium offers an exclusive and elevated experience for discerning patrons.
                            Positioned strategically for optimal views, these seats provide unparalleled sightlines of the event, 
                            whether it be a sporting match, concert, or other live performance. Designed with luxury in mind, 
                            VIP seats typically feature plush, comfortable seating arrangements, 
                            often with extra legroom and amenities such as cushioned seats, private restrooms, and dedicated concession services. 

                        </p><br>
                        <p>
                            Beyond the physical comforts, VIP ticket holders enjoy a heightened level of service, 
                            with dedicated staff catering to their needs throughout the event.
                            From expedited entry and parking to access to exclusive lounges, 
                            the VIP seating area ensures a premium and memorable experience for those seeking the utmost in comfort, convenience, 
                            and hospitality.
                        </p><br>
                        <p>

                            The VIP seating area within the stadium embodies an epitome of exclusivity and refinement, 
                            offering an oasis of luxury amidst the bustling energy of the event. Beyond merely providing prime views, 
                            these seats grant access to a world of bespoke amenities and personalized services. From the moment VIP guests arrive,
                            they're enveloped in a seamless experience tailored to their desires, 
                            with dedicated concierge assistance guiding them through every step    
                        </p>

                    </div>
                    <div id="svgImgDiv" class="VIPParts">
                        <!--<div id="firstSVG" class="SVG"></div>-->
                        <div id="secondSVG" class="SVG"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</c:if>
<c:if  test="${process eq 'soundAndLight'}">
    <style>
        /*        body{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
              }*/

        .containerre {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            height: auto;
            padding: 10px;
            padding-left: 25px;
            background-color: rgba(99, 99, 99, 0.05);
        }

        .sections {
            width: 95%;
            height: 90vh;
            border: 1px solid black;
            padding: 0;
            margin: 50px 0;
            border-radius: 18px;
            overflow: hidden;
            background-color: white;
            box-shadow: 0.7px 0.7px 5px grey;

        }


        .headinggs {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            width: 100%;
            height: 100px;
            /* background-color: #e29191c6; */
            border: 1px solid black;
            color: #ffc451;
            padding-left: 100px;
            background-color: rgba(20, 20, 20, 0.8);
            font-size: 18px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
                sans-serif;
        }

        #descriptionContent {
            display: flex;
            width: 100%;
            height: 85%;
            padding: 30px;

            /* background-color: #883232e0; */
        }

        .imgDiv {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60%;
            height: 100%;
            /* background-color: grey; */
            background-image: url("images/TOP SOUND AND LIGHT/TOP4.jpg");
            background-size: cover;
            overflow: hidden;
            object-fit: cover;
            background-position: center;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .descriptionDiv {
            display: flex;
            flex-direction: column;
            /*gap: 10px;*/
            font-size: 16px;
            width: 40%;
            height: 100%;
            justify-content: center;
            /*align-items: center;*/
            font-family: Calibri, "Trebuchet MS", sans-serif;
            /*padding: 5px 20px;*/
        }

        #smallHeading {
            font-size: 28px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 600;
            align-self: flex-start;
        }


        #VIPsection {
            height: 1000px;
        }

        #VIPHeading {
            height: 7rem;
        }

        #VIPContent {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 180vh;
        }



        .VIPWrapper {
            display: flex;
            justify-content: space-between;
            width: 100%;
            height: 93%;
            padding: 20px;
            /* border: 1px solid black; */
        }

        .VIPParts {
            height: 100%;
            /* border: 1px solid black; */
        }

        #VIPListDiv {
            display: flex;
            width: 60%;
            flex-direction: column;
            /*justify-content: space-evenly;*/
            padding: 5px 15px;
            font-size: 22px;
            font-family: Calibri, "Trebuchet MS", sans-serif;
            font-weight: 500;
        }



        #svgImgDiv {
            display: flex;
            width: 40%;
            flex-direction: column;
            /*justify-content: space-around;*/
            /*align-items: center;*/
        }

        .SVG {

            width: 90%;
            height: 80%;
        }


        #secondSVG {
            background-image: url("images/TOP SOUND AND LIGHT/TOP3.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            border-radius: 18px;
        }

    </style>

    <div class="containerre">
        <div id="VIPDescription" class="sections">
            <div id="descriptionHeading" class="headinggs">
                <h1>TOP SOUND</h1>
            </div>
            <div id="descriptionContent" class="content">
                <div class="imgDiv"></div>
                <div class="descriptionDiv">
                    <p id="smallHeading">Description</p>
                    <p>
                        The top sound systems in stadiums are designed to deliver an immersive audio experience that enhances the atmosphere and 
                        excitement of live events. Among the leading sound systems used in stadiums worldwide are those produced by companies like L-Acoustics, 
                        Meyer Sound, and JBL Professional. JBL Professional, a division of Harman International, 
                        offers a range of high-performance sound systems tailored specifically for stadium applications. 

                    </p>
                    <p>
                        L-Acoustics is renowned for its innovative line array speaker systems, such as the K2 and K1 systems,
                        which are designed to deliver pristine sound quality and uniform coverage throughout the stadium. 
                        These systems utilize advanced technologies like Wavefront Sculpture Technology (WST) and Panflex, 
                        allowing for precise control over dispersion patterns and ensuring optimal sound distribution 
                        even in challenging acoustical environments.
                    </p>


                </div>
            </div>
        </div>

        <div id="VIPsection" class="sections">
            <div id="VIPHeading" class="headinggs">
                <h1>TOP LIGHTNING</h1>
            </div>
            <div id="rulesContent" class="content">
                <div class="VIPWrapper">
                    <div id="VIPListDiv" class="VIPParts">
                        <p>

                            The top lighting solutions for stadiums are designed to provide optimal visibility, 
                            energy efficiency, and versatility to accommodate various events and activities.
                            Among the leading lighting systems used in stadiums globally are LED lighting solutions offered by 
                            companies such as Musco Lighting, 
                            Philips Lighting (now Signify), and Cree.

                        </p><br>
                        <p>
                            Musco Lighting specializes in providing customized lighting solutions for sports facilities, 
                            including stadiums, arenas, and outdoor venues. Their LED lighting systems are designed to minimize glare,
                            reduce light spillage, and enhance visibility for players and spectators. Musco's Total Light Control (TLC)
                            technology allows for precise control over light distribution and uniformity,
                            ensuring consistent illumination levels across the playing field or performance area.
                        </p><br>
                        <p>
                            Philips Lighting, now known as Signify, offers a wide range of LED lighting solutions suitable for stadium applications.
                            Their lighting systems incorporate advanced features such as remote control, dimming capabilities, 
                            and customizable lighting scenes, allowing venue operators to create immersive lighting effects tailored to specific 
                            events or preferences. Signify's LED luminaires are also known for their energy efficiency and long lifespan,
                            contributing to sustainability and cost savings for stadium owners.

                        </p>

                    </div>
                    <div id="svgImgDiv" class="VIPParts">
                        <!--<div id="firstSVG" class="SVG"></div>-->
                        <div id="secondSVG" class="SVG"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</c:if>