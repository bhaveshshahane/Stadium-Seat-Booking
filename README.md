# 🏟️ Stadium Seat Booking System 🎫

A complete web-based **Stadium Seat Booking System** developed using **Advanced Java (Servlets/JSP)**, **MySQL**, and **Bootstrap 5**. This project allows users to book stadium seats online and receive a confirmation email after booking. Admins can manage events, seats, and view booking reports.

---

## 🚀 Features

- 👤 User registration and login
- 🪑 Real-time seat selection and availability
- 📩 Email notification on successful booking
- 📅 Admin can create and manage events
- 📊 View booking history and reports
- 🔐 Secure session management
- 📱 Fully responsive UI with Bootstrap 5

---

## 🧑‍💻 Technologies Used

- **Frontend:** HTML5, CSS3, JavaScript, Bootstrap 5  
- **Backend:** Advanced Java (Servlets + JSP)  
- **Database:** MySQL  
- **Email:** JavaMail API for booking confirmation  
- **Server:** Apache Tomcat (v9 or above)

---

## ⚙️ Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/bhaveshshahane/Stadium-Seat-Booking.git
cd stadium-seat-booking
```
### 2. Import into IDE (Eclipse/IntelliJ)
- Open as a Dynamic Web Project

- Set build path to include servlet-api.jar and JavaMail jars

### 3. Configure Database
- Create a MySQL database named: stadium_booking

- Import booking.sql from the project folder

### 4. Update Database & Email Configuration
Open the database connection file (DBUtil.java) and email utility (EmailUtil.java):

```bash
// DBUtil.java
String url = "jdbc:mysql://localhost:3306/stadium_booking";
String user = "root";
String pass = "yourpassword";

// EmailUtil.java
String host = "smtp.gmail.com";
String port = "587";
String user = "yourgmail@gmail.com";
String pass = "yourapppassword"; // Use App Password for Gmail

```

### 5. Deploy on Apache Tomcat
- Copy project to Tomcat's webapps folder

- Start Tomcat

- Visit in browser:

  ```bash
  http://localhost:8080/stadium-seat-booking
  ```
### 📧 Email Functionality
- When a user successfully books a seat:

- A confirmation email is sent using the JavaMail API

- The email includes booking ID, event name, date/time, and seat number

### ✅ Future Improvements
- PDF ticket generation

- QR code on ticket

- Payment gateway integration

- Seat hold timeout (auto release if not confirmed)

- SMS notification

### 🙌 Author
Bhavesh Shahane

📧 shahanebhavesh04@gmail.com

🌐 https://bhaveshshahane.github.io





