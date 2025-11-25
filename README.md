project 1-php-blood bank and emergenecy donor alert system
Project Overview:
The Blood Bank & Emergency Donor Alert System is a web-based application developed using HTML, CSS, PHP, and MySQL.
It allows donors to register, users to request blood, and the admin to manage blood availability and emergency alerts.
The system helps hospitals, organizations, and patients find suitable donors quickly during emergencies.

Features:
 User Features
Register as a blood donor
Request blood
View blood availability
Receive emergency alerts (SMS/Email if configured)

 Admin Features
Secure admin login
Manage donors
Manage blood requests
Approve/Reject emergency blood requests
View database records

structure:
/BloodBankProject
│── index.php
│── register.php
│── request_blood.php
│── admin_login.php
│── admin_dashboard.php
│── css
│── database/
      └── blood_bank.sql
      
default admin credentials:
username: admin
password: admin123
Database Name: blood_bank

Tables included:
🔹 admins
Column	Description
id	      Primary Key
username	Admin Username
password	Admin Password

🔹 donors
Column	Description
id	   Primary Key
name	Donor Name
blood_group	Blood Type
phone	Mobile Number
email	Email Address
location	City / Area

🔹 blood_requests
Column	Description
id	Primary Key
patient_name	Name of patient
blood_group	Required blood type
units	Units needed
phone	Contact number
status	Pending/Approved/Rejected



2.project
html and css project :
Travel destination website:
overview:
The Travel Destination Website is a simple, responsive, and visually appealing front-end web project built using HTML and CSS. The purpose of this website is to help users explore different travel destinations and book their trips through a clean and user-friendly interface.
Each destination includes an image, description, and a Book Now button that leads to a dedicated booking page.

structure:
/project-folder
│── index.html
│── style.css
│── paris.html
│── tokyo.html
│── dubai.html

 How it works on:
 Make sure all files (HTML & CSS) are in the same directory.
 Open index.html in any web browser.
 Click on “Book Now” to open the booking pages.
Works on:
Google Chrome
Firefox
Microsoft Edge

Features:
 Home Page with Beautiful Header Section
 Popular Destinations Displayed in Cards
 Individual Booking Pages (Paris, Tokyo, Dubai)
 Simple Booking Form with Success Alert

 Pages Included:
🔹 1. Home Page (index.html)
Header hero section
Popular destinations (Paris, Tokyo, Dubai)
Destination cards with images & description
🔹 2. Booking Pages
Each destination has its own page:
paris.html
tokyo.html
dubai.html
Each page includes:
Booking form
Full Name
Email
Message field
Submit button with confirmation alert



