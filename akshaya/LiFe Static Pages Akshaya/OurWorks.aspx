<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurWorks.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Our Works</title>
    <style>
        body{
            background-color:linen;
        }
         .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color:#C28840;
            color: white;
        }
        .logo img {
            height: 50px; /* Adjust logo size */
        }
        .navbar ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            align-items:center;
            justify-content:space-around;
        }
        .navbar li {
            margin-left: 20px;
        }

        .navbar a {
            color: black;
            font-weight:bolder;
            text-decoration: none;
            font-size: 18px;
            font-family:'Bookman Old Style';
        }

        .navbar a:hover {
            /*text-decoration: underline;*/
            background-color:palegoldenrod;
            color:darkred;
            padding:10px;
        }
        .logo{
            border-radius:50px;
        }
        /*Scroll text*/
        .scroll-text {
            white-space: nowrap;
            position: absolute;
            animation: scroll 10s linear infinite;
            font-size: large;
            padding-top:5px;
        }

        @keyframes scroll {
            from {
                transform: translateX(350%);
            }
            to {
                transform: translateX(-150%);
            }
        }

        .container {
            width: 99%;
            overflow: hidden;
            position: relative;
          /*  background: #222;*/
            display:flex;
            background-color:palegoldenrod;
            color: black;
            padding: 15px;
            justify-content:center;
            align-items:center;
            top: -20px;
            left: -19px;
            height: 30px;
        }
        /*Donate now button*/
        .Dbutton{
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .Dbutton:hover{
            background-color: goldenrod; 
            transform: scale(1.1);
        }
      
        /*image carousel*/
          .carousel-container {
            position: relative;
            width: 41%;
            overflow: hidden;
            margin: auto;
            max-width: 100%;
            top: 0px;
            left: 0px;
            height: 451px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 1);
            border-radius:10px;
        }

        .carousel-slides {
            display: flex;
            transition: transform 1s ease-in-out;
        }

        .carousel-slides img {
            width: 100%; /* Makes the image full width of the container */
            height: auto;
            border-radius: 10px;
        }

        /* Navigation buttons */
        .carousel-buttons {
            position: absolute;
            top: 50%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            transform: translateY(-50%);
        }

        .prev, .next {
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            font-size: 18px;
            padding: 10px;
            border: none;
            cursor: pointer;
        }

        /* Image Gallery */
      .gallery {
            display: flex;
            justify-content: space-around;
            margin: 20px 0;
            height: 291px;
            border-radius:20px;
           /* background-color:palegoldenrod;*/
        }
        .gallery img {
            width: 400px;
            height: 250px;
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
            border-radius:50px;
            /*padding:20px;*/
            box-shadow:0 4px 20px 4px #C28840;
        }

        .gallery img:hover {
            transform: scale(1.1);
        }

        /* Popup Box */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 9999;
            justify-content: center;
            align-items: center;
            animation: fadeIn 0.5s ease-in-out;
        }

        .popup-content {
            background-color:antiquewhite;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            text-align: center;
            animation: slideIn 0.5s ease-out;
            font-family:'Monotype Corsiva';
            font-size:x-large;
            color:darkred;
        }

        /* Close Button */
        .popup .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 30px;
            color: black;
            cursor: pointer;
        }

        /* Animation */
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        @keyframes slideIn {
            0% { transform: translateY(-50px); }
            100% { transform: translateY(0); }
        }

        /*Miscellaneous duties gallery*/

        .h3{
            color:darkgreen;
            font-family:'Book Antiqua';
            font-size:60px;
            font-weight:bolder;
            margin-top:50px;
        }
         .mduties {
            display: flex;
            gap: 20px;
            justify-content:space-around;
            margin-left: 0px;
            width: 1408px;
            height: 304px;
        }

        /* Image Styling */
        .mduties .item {
            position: relative;
            width: 250px;
            height: 180px;
            /*overflow: hidden;*/
            border-radius: 10px;
            /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);*/
            cursor: pointer;
            perspective: 1000px;
        }
            .mduties .item img {
                object-fit: cover;
                width: 336px;
                height: 200px;
                cursor: pointer;
                /*transition: transform 0.3s ease-in-out;*/
                /*transition: transform 1s ease-in-out;*/
                border-radius: 20px;
                align-items: center;
                box-shadow: 3px 3px 10px black;
                transition: transform 0.6s;
                transform-style: preserve-3d;
            }
        /* Hover Box Styling */
        .hover-box{
            position: absolute;
            background: rgba(0, 0, 0, 0.85);
            color: white;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 14px;
            max-width: 250px;
            display: none; /* Hidden by default */
            z-index: 10;
            }
        .mduties .item img:hover {
            /*transform: scale(1.1);*/
            /*transform: rotate(360deg);*/
            transform: rotateY(180deg);
        }
        .hover-text {
            width: 100%;
            background-color:beige;
            color: darkred;
            padding: 10px;
            border-radius: 5px;
            font-family:'Bookman Old Style';
            font-size: 16px;
            text-align: center;
            margin-top: 10px; /* Space between image and text */
            display: none; /* Hidden by default */
            transition: opacity 0.3s ease-in-out;
            margin-left:40px;
            border-style:ridge;
            border-color:darkred;
        
        }
        /* Show Text on Hover */
        .mduties .item:hover .hover-text {
            display: block;
        }

        /*Appraisals*/
        /* Review Section */
        .reviews-section {
            max-width: 800px;
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Individual Review */
        .review-container {
            display: flex;
            align-items: center;
            background-color:blanchedalmond;
            color:black;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        /* Image Styling */
        .review-img {
            width: 134px;
            height: 116px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
            border: 3px solid #555;
        }

        /* Review Text */
        .review-text {
            flex: 1;
        }

        .review-text p {
            font-size: 16px;
            color: #333;
            line-height: 1.5;
            margin: 0;
            font-family:'Century Schoolbook';
            color:darkred;
            font-weight:bolder;
        }

        .review-name {
            font-weight: bolder;
            font-size: 18px;
            margin-top: 8px;
            font-family:'Century Schoolbook';
            color:black;
        }

        .review-role {
            font-size: 14px;
            color: black;
            font-family: 'Century Schoolbook';
        }

        .review-container:hover{
           transform: scale(1.1);
           border-style:ridge;
           border-color:goldenrod;
        }

        /* Responsive */
        @media (max-width: 600px) {
            .review-container {
                flex-direction: column;
                text-align: center;
                padding: 15px;
            }
            .review-img {
                margin-bottom: 10px;
                margin-right: 0;
            }
        }
        /* Footer Container */
            .footer {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background: linear-gradient(to right, #e6b477, #f0c892); /* Softer shades of #C28840 */
                color: white;
                padding: 30px 50px;
                border-top: 4px solid #ffcc00;
                max-width: 100%;
                border-radius: 15px 15px 0 0;
                box-shadow: 0px -4px 12px rgba(0, 0, 0, 0.2);
                flex-wrap: wrap;
            }
    
            /* Navigation Links (Left Side) */
            .footer-nav {
                display: flex;
                flex-direction: column;
                align-items: flex-start;
            }

            .footer-nav a {
                color: darkred;
                text-decoration: none;
                font-weight: bold;
                font-size: 18px;
                margin-bottom: 10px;
                transition: all 0.3s ease-in-out;
            }

            .footer-nav a:hover {
                color: #ffcc00;
                transform: translateX(5px);
            }

            /* Right-aligned Address & Logo */
            .footer-right {
                display: flex;
                align-items: center;
                text-align: right;
                gap: 15px;
            }

            /* Logo Styling */
            .footer-logo img {
                width: 80px; /* Smaller logo */
                height: auto;
                transition: transform 0.3s ease;
            }

            .footer-logo img:hover {
                transform: scale(1.1);
            }

            /* Address Styling */
            .footer-address {
                font-size: 16px;
                font-family: 'Book Antiqua';
                font-weight: bold;
                color: darkred;
                max-width: 250px;
            }

            /* Social Media Icons */
            .footer-social {
                display: flex;
                gap: 15px;
                margin-top: 10px;
            }

            .footer-social a {
                color: darkred;
                font-size: 22px;
                transition: color 0.3s ease;
            }

            .footer-social a:hover {
                color: #ffcc00;
            }

            /* Responsive Design */
            @media (max-width: 768px) {
            .footer {
                flex-direction: column;
                text-align: center;
                padding: 40px;
            }
            .footer-nav {
                align-items: center;
            }
            .footer-right {
                flex-direction: column;
                align-items: center;
            }
            .footer-address {
                text-align: center;
            }
            .footer-logo img {
                margin-top: 10px;
            }
            }
        .p1{
            font-family: 'Monotype Corsiva'; 
            text-align: justify; 
            color:darkred;  
            font-size: x-large;
            padding:20px;
            margin-left: 0px;
        }
        .pcontainer {
            width: 1289px;
            margin-left: 130px;
            transition: border 1s ease, box-shadow 1s ease;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5), 0 0 20px rgba(218, 165, 32, 0.5);
            background-color:floralwhite;
        }
        /*.pcontainer:hover{
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);

        }*/

        
    </style>
   
</head>
<body style="height: 1380px">
    <form id="form1" runat="server">
       <!--scroll text-->
      <div class="container">
            <div class="scroll-text">
                  <br />Contact : +91 9360009019&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; curetrustandresearchcentre@gmail.com</div>
      </div>
            <!-- Header Section -->
    <div class="header">
        <!-- Logo Section -->
        <div class="logo">
            <img src="logo.jpg" alt="Website Logo" class="logo" />
        </div>

        <!-- Navigation Bar -->
        <div class="navbar">
            <ul>
                <li><a href="Homepage.aspx">Home</a></li>
                <li><a href="About Us.aspx">About Us</a></li>
                <li><a href="OurWorks.aspx">Our Works</a></li>
                <li><a href="Lend a Hand.aspx">Lend A Hand</a></li>
                <li><a href="Chronicles and Bulletins.aspx">Cronicles & Bulletins</a></li>
                <li>
                    <asp:Button class="Dbutton" ID="Button1" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button1_Click" Text="DONATE NOW" Width="131px" Font-Names="Book Antiqua" />
                </li>
            </ul>
        </div>
    </div>
        <br />
        <br />
        <!-- Image Carousel -->
        <div class="carousel-container">
            <div class="carousel-slides" id="carouselSlides">
                <img src="car1 (1).jpeg" alt="Image 1" />
                <img src="car2 (2).jpeg" alt="Image 2" />
                <img src="car3 (1).jpeg" alt="Image 3" />
                <img src="imagebutton (1).jpeg" alt="Image 3" />

            </div>

            <div class="carousel-buttons">
                <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
                <button class="next" onclick="moveSlide(1)">&#10095;</button>
            </div>
        </div><br /><br /><br /><br />

        <!--script for image carousel -->
        <script>
            let currentIndex = 0;

            // Function to move the slide
            function moveSlide(direction) {
                let slides = document.getElementById('carouselSlides');
                let totalSlides = slides.children.length;

                // Update the current index
                currentIndex = (currentIndex + direction + totalSlides) % totalSlides;

                // Adjust the transform property to show the appropriate image
                slides.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
            }

            // Optional: Auto-slide functionality every 3 seconds
            setInterval(() => {
                moveSlide(1);
            }, 3000); // Change every 3 seconds

        </script>

      <div class="pcontainer">
        <p class="p1"> At Cure Trust & Research Center, we are committed to making a meaningful difference in the lives of individuals and communities. Through our diverse services, we aim to provide support, guidance, and care where it is needed most.
            In addition to our core services, we are constantly involved in various community projects that focus on improving lives and creating a better future. From providing educational support for underserved children to organizing health camps and disaster relief efforts, we are dedicated to enhancing the well-being of individuals and families in need. Our volunteer network plays a crucial role in bringing these initiatives to life, and together, we aim to build a more compassionate and resilient society.
        </p>
        </div>  
        <br /><br /><br />
        <!--3 images container-->
            <div class="gallery">
            <img src="car1 (1).jpeg" alt="Image 1" onclick="showPopup('Vocational Rehabilitation Specialist', 'We focus on empowering individuals with disabilities, injuries, or other barriers to employment by providing tailored training, career counseling, and job placement services. ', 'car1 (1).jpeg')" />
            <img src="car2 (2).jpeg" alt="Image 2" onclick="showPopup('Blood Donation Drive', 'The Trust organizes and facilitates donation camps, spreading awareness about the importance of blood donation and encouraging voluntary participation.', 'car2 (1).jpeg')" />
            <img src="car3 (1).jpeg" alt="Image 3" onclick="showPopup('Funeral Services', 'Our Trust supports funeral services for individuals without family or financial support or orphans to ensure that every person receives a respectful and dignified farewell. The trust steps in to perform last rites for those who pass away alone, unclaimed, or without the means to arrange their own funeral.', 'circus.jpg')" />
        </div>
        <br /><br />
        <!-- Popup Box -->
        <div id="popup" class="popup">
            <div class="popup-content">
                <span class="close-btn" onclick="closePopup()">&times;</span>
                <h2 id="popupTitle"></h2>
                <p id="popupDescription"></p>
            </div>
        </div>
    <script>
        // Function to show the popup with the image description
        function showPopup(title, description, image) {
            document.getElementById('popupTitle').innerText = title;
            document.getElementById('popupDescription').innerText = description;
            document.getElementById('popup').style.display = 'flex';
        }
        // Function to close the popup
        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }

        // Close the popup when clicking outside of the popup content (on the overlay)
        document.getElementById('popup').addEventListener('click', function (event) {
            if (event.target === this) { // If the target is the overlay background
                closePopup();
            }
        });
    </script>
        <!--Miscellaneous duties starts here-->
        <h3 class="h3" style="text-align: center">Miscellaneous duties</h3>

        <div class="mduties">
        <!-- Work1-->
        <div class="item">
            <img src="car1 (1).jpeg" alt="Img1"/>
            <div class="hover-text">We focus on empowering individuals with disabilities through training, career counseling, and job placement.</div>
        </div>

        <!-- work2 -->
        <div class="item">
            <img src="car2 (2).jpeg" alt="Img2"/>
            <div class="hover-text">The Trust organizes blood donation camps to support patients in need.</div>
        </div>

        <!-- work3 -->
        <div class="item">
            <img src="car3 (1).jpeg" alt="Img3"/>
            <div class="hover-text">We provide funeral services for individuals without family support, ensuring a dignified farewell.</div>
        </div>
    </div>
        
    <!-- Hover Box -->
    <div id="hoverBox" class="hover-box"></div>
      
    <script>
        function showHoverBox(event, text) {
            var hoverBox = document.getElementById("hoverBox");
            hoverBox.innerHTML = text;
            hoverBox.style.display = "block";

            // Position the hover box near the hovered image
            hoverBox.style.left = event.pageX + 15 + "px"; // 15px offset for better visibility
            hoverBox.style.top = event.pageY + "px";
        }

        function hideHoverBox() {
            document.getElementById("hoverBox").style.display = "none";
        }
    </script>
        
        <!-- Appraisals starts here -->
        <h3 class="h3" style="text-align: center">Appraisals</h3>
        <div class="reviews-section">
        <div class="review-container">
            <img src="person1.jpg" alt="Reviewer 1" class="review-img"/>
            <div class="review-text">
                <p>"An incredible experience! The dedication and service are beyond expectations."</p>
                <div class="review-name">Alice Johnson</div>
                <div class="review-role">Volunteer</div>
            </div>
        </div>

        <div class="review-container">
            <img src="person2.jpg" alt="Reviewer 2" class="review-img"/>
            <div class="review-text">
                <p>"Their support for underprivileged communities is heartwarming and inspiring."</p>
                <div class="review-name">Mark Thompson</div>
                <div class="review-role">Donor</div>
            </div>
        </div>

        <div class="review-container">
            <img src="person3.jpg" alt="Reviewer 3" class="review-img"/>
            <div class="review-text">
                <p>"A truly impactful organization. I am grateful to be a part of their mission."</p>
                <div class="review-name">Emily Davis</div>
                <div class="review-role">Social Worker</div>
            </div>
        </div>
    </div>
        <br /><br />

      <!--footer-->
        <footer class="footer">
    <!-- Navigation Links (Left) -->
    <div class="footer-nav">
        <a href="Homepage.aspx">Home</a>
        <a href="About Us.aspx">About Us</a>
        <a href="OurWorks.aspx">Our Works</a>
        <a href="Lend a Hand.aspx">Lend A Hand</a>
        <a href="Chronicles and Bulletins.aspx">Chronicles & Bulletins</a>
    </div>

    <!-- Right-aligned Address & Logo -->
    <div class="footer-right">
        <div class="footer-address">
            <p>Cure Trust & Research Center</p>
            <p>8, MM Complex, Kalpalam Road,</p>
            <p>Goripalayam, Madurai - 625002</p>
            <p>Ph: 9360009019</p>
        </div>
        <div class="footer-logo">
            <img src="logo.jpg" alt="Trust Logo"/>
        </div>
    </div>
</footer>
                
       
    </form>
    <p>
        &nbsp;</p>


</body>
</html>

