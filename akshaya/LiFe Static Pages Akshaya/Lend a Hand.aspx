<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lend a Hand.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Lend a Hand</title>
    <style type="text/css">
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
        /*Donate now button*/
        .Dbutton{
            cursor: pointer;
            transition: all 0.3s ease;
        }
            .Dbutton:hover {
                background-color: goldenrod;
                transform: scale(1.1);
            }
            /*h1*/
            .h1{
                font-family:'Book Antiqua';
                font-size:xx-large;
                color:orange;
                font-weight:bolder;
                text-align:center;
                color: darkred;
                text-shadow: 0px 0px 8px rgba(255, 204, 0, 0.8), 
                 0px 0px 15px rgba(255, 204, 0, 0.6);
                /*text-shadow: 2px 2px 5px darkred;*/
            }
            /*Content container*/
            .p1{
            font-family: 'Monotype Corsiva'; 
            text-align: center; 
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
            border-radius:20px;
        }
        .h2{
            font-family:'Lucida Calligraphy';
            color:darkred;
            font-size:24px;
            font-weight:bold;
            text-align:center;
        }

        /*torn container*/
        .torn-container {
            position: relative;
            background:palegoldenrod;
            border-style:ridge;
            border-color:darkred;
            padding: 40px;
            width: 1420px;
            text-align: center;
            font-size: 18px;
            font-family: Arial, sans-serif;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            
            /* Creating the torn effect */
            clip-path: polygon(
                0% 10%, 5% 15%, 10% 5%, 15% 12%, 20% 8%, 25% 15%, 30% 5%, 35% 10%, 
                40% 7%, 45% 15%, 50% 10%, 55% 15%, 60% 5%, 65% 12%, 70% 7%, 75% 10%, 
                80% 5%, 85% 12%, 90% 8%, 95% 15%, 100% 10%, 100% 90%, 95% 85%, 90% 95%, 
                85% 88%, 80% 92%, 75% 85%, 70% 95%, 65% 90%, 60% 92%, 55% 85%, 50% 90%, 
                45% 85%, 40% 95%, 35% 88%, 30% 92%, 25% 85%, 20% 90%, 15% 88%, 10% 95%, 
                5% 85%, 0% 90%
            );
            top: 0px;
            left: 0px;
            height: 430px;
        }
        /* Image Gallery */
        .image-gallery {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .image-container {
            position: relative;
            width: 30%;
        }

        .image-container a {
            display: block;
        }

        .image-container img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            transition: opacity 0.3s ease-in-out;
            margin-top: 1px;
            border-radius:20px;
        }

        .hover-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-family:'Arial Rounded MT';
            font-size: large;
            font-weight: bold;
            color:beige;
            background: darkred;
            padding: 8px 12px;
            border-radius: 2px;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }

        /* Hover Effect */
        .image-container:hover img {
            opacity: 0;
        }

        .image-container:hover .hover-text {
            opacity: 1;
             border-style:ridge;
            border-color:goldenrod;
        }
        .galcontainer{
            margin-top:70px;
        }
        /*Containers with Read more and Read less buttons*/
          .rmrlcontainer {
            width: 60%;
            background-color:bisque;
            padding: 20px;
            margin: 10px 10px 10px 315px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .btn {
            background:darkred;
            color: palegoldenrod;
            border: none;
            padding: 8px 12px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s;
            font-family:'Comic Sans MS';
        }

        .btn:hover {
            background:palegoldenrod;
            color:darkred;
            border-style:ridge;
            border-color:darkgoldenrod;
        }

        .btn.read-less {
            display: none;
            background: darkred;
            color:palegoldenrod
        }

        .btn.read-less:hover {
            background:palegoldenrod;
            color:darkred;
            border-style:ridge;
            border-color:darkgoldenrod;
        }
        .rmrlcontainer .rmrlp{
            font-family:'Book Antiqua';
            color:darkgoldenrod;
            font-size:xx-large;
            font-weight:bold;
            text-shadow:0 0 2px darkred;
        }
        .rmrltext{
            font-family:'Bodoni MT';
            font-size:large;
            text-align:center;
            color:darkgreen;
        }
         /*footer*/
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
       
    </style>
</head>
<body>
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
                <li><a href="Chronicles and Bulletins.aspx">Chronicles & Bulletins</a></li>
                <li><a href="Become a Beneficiary.aspx">Become a Beneficiary</a></li>
                <li>
                    <asp:Button class="Dbutton" ID="Button1" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button1_Click" Text="DONATE NOW" Width="131px" Font-Names="Book Antiqua" />
                </li>
            </ul>
        </div>
    </div>
        <br />
        <!--content 1 -->
        <h1 class="h1">Lend a Hand – Be Part of Something Bigger!</h1><br /><br />
        <div class="pcontainer">
        <p class="p1"> At Cure Trust, We believe that change starts with us. It starts with you. Every hand extended, every effort made, creates a ripple effect of kindness and support that transforms lives.
</p>
        </div>  
        <br /><br />


        <h2 class="h2">Here's how you can make a difference...</h2>
   

        <!-- torn container-->
       <div class="torn-container">
       <div class="galcontainer">
        <div class="image-gallery">
            <div class="image-container">
                <img src="volunteer.png" alt="Image 1"/>
                <a href="Donate Now.aspx"><div class="hover-text">Volunteer for Impact</div></a>
            </div>
            <div class="image-container">
                <img src="give.png" style="margin-top:50px;" alt="Image 2"/>
                <a href="Donate Now.aspx"><div class="hover-text">Donate</div></a>
            </div>
            <div class="image-container">
                <img src="spread.png" alt="Image 3"/>
                <a href="Donate Now.aspx"><div class="hover-text">Be the voice of Change!</div></a>
            </div>
        </div>
           </div>
           </div>
        <br /><br />

        <!--Containers with read more readless-->
         <div class="rmrlcontainer">
        <p class="rmrlp"><strong>Hands On Action</strong></p>
        <p class="rmrltext" id="text1" data-fulltext="1.Spending time with children and orphans: Mentoring, tutoring, or just offering companionship can brighten their world.

 2.Assisting disabled persons: Providing mobility assistance, teaching life skills, or helping with everyday tasks.

3.Supporting elderly individuals: Offering companionship, running errands, or providing a friendly face for those who may be isolated." 
            data-shorttext="Join our Hands-On Programs where you can directly engage with the people and communities we serve. Whether it's helping build a home, tutoring children, or assisting in local health clinics, you’ll see the immediate impact of your actions....">
            Join our Hands-On Programs where you can directly engage with the people and communities we serve. Whether it's helping build a home, tutoring children, or assisting in local health clinics, you’ll see the immediate impact of your actions....
        </p>
        <button class="btn read-more" onclick="toggleText(event, 'text1', this)">Read More</button>
        <button class="btn read-less" onclick="toggleText(event, 'text1', this)">Read Less</button>
    </div>
        <br />

    <div class="rmrlcontainer">
        <p class="rmrlp"><strong>Your Gift of Generosity - Donate</strong></p>
        <p class="rmrltext" id="text2" data-fulltext=" 1.One-time or recurring financial donations: Every donation, no matter the amount, helps us continue our work.

2.Gift-in-kind donations: If you have gently used clothes, toys, books, medical supplies, or other items, these can be donated to help those in need.

3.Corporate partnerships and sponsorships: We welcome businesses to partner with us in supporting our cause through donations, event sponsorships, and employee volunteering opportunities."
            data-shorttext="Donations are a vital resource in ensuring that we can continue our programs and services for those in need...">
            Donations are a vital resource in ensuring that we can continue our programs and services for those in need...
        </p>
        <button class="btn read-more" onclick="toggleText(event, 'text2', this)">Read More</button>
        <button class="btn read-less" onclick="toggleText(event, 'text2', this)">Read Less</button>
    </div>
        <br />
        <div class="rmrlcontainer">
        <p class="rmrlp"><strong>Spread A Word</strong></p>
        <p class="rmrltext" id="text3" data-fulltext="  Be a Voice of Change

Help us raise awareness about the causes we support. Share our mission with friends, family, and your community, so more people can get involved in making a difference.

The more people who know about the challenges facing children, orphans, disabled persons, and elderly individuals, the more people can come together to help. By spreading the word, you can help us create a ripple effect of kindness, compassion, and action."
            data-shorttext="Help us raise awareness about the causes we support. Share our mission with friends, family, and your community, so more people can get involved in making a difference....">
            Help us raise awareness about the causes we support. Share our mission with friends, family, and your community, so more people can get involved in making a difference....
        </p>
        <button class="btn read-more" onclick="toggleText(event, 'text3', this)">Read More</button>
        <button class="btn read-less" onclick="toggleText(event, 'text3', this)">Read Less</button>
    </div>
<br />
   <br />

    <script>
        function toggleText(event, textId, button) {
            event.preventDefault(); // Prevents scrolling to the top

            let textElement = document.getElementById(textId);
            let readMoreBtn = button.parentElement.querySelector(".read-more");
            let readLessBtn = button.parentElement.querySelector(".read-less");

            let fullText = textElement.getAttribute("data-fulltext");
            let shortText = textElement.getAttribute("data-shorttext");

            if (textElement.innerText === shortText) {
                textElement.innerText = fullText;
                readMoreBtn.style.display = "none";
                readLessBtn.style.display = "inline-block";
            } else {
                textElement.innerText = shortText;
                readMoreBtn.style.display = "inline-block";
                readLessBtn.style.display = "none";
            }
        }
    </script>


        <!--Footer-->
<footer class="footer">
    <!--Navigation Links (Left)-->
    <div class="footer-nav">
        <a href="Homepage.aspx">Home</a>
        <a href="About Us.aspx">About Us</a>
        <a href="OurWorks.aspx">Our Works</a>
        <a href="Lend a Hand.aspx">Lend A Hand</a>
        <a href="Chronicles and Bulletins.aspx">Cronicles & Bulletins</a>
        <a href="Become a Beneficiary.aspx">Become a Beneficiary</a>
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
</body>
</html>


