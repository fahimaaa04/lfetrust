<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication5_lfe_nisha_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Home</title>
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
        /*Torn Container*/
         :root {
            --width: 95%;   /* Adjust width */
            --height: 500px; /* Adjust height */
        }
        .torn-container {
            width: var(--width);
            height: var(--height);
            margin: 50px auto;
            position: relative;
            overflow: hidden;
            border-radius: 5px;
            clip-path: polygon(
                0% 0%, 100% 0%, 100% 90%, 
                90% 85%, 85% 92%, 70% 88%, 
                60% 95%, 50% 90%, 40% 96%, 
                30% 90%, 15% 94%, 10% 85%, 0% 90%);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Image Styling */
        .torn-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: filter 0.5s ease-in-out;
        }

        /* Quote Overlay */
        .quote-overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 90%;
            text-align: center;
            color:black;
            font-family: 'Georgia', serif;
            font-size: 1.5rem;
            font-style: italic;
            opacity: 0;
            transition: opacity 0.5s ease-in-out;
            padding: 20px;
            border-radius: 10px;
           /* background-color:#B22222;*/
        }

        /* Hover Effect: Blur Image and Show Quote */
        .torn-container:hover img {
            filter: blur(9px);
        }
        .torn-container:hover{
            border-style:ridge;
            border-color:goldenrod;
        }
        .torn-container:hover .quote-overlay {
            opacity: 1;
        }

        /* Responsive Adjustments */
        @media (max-width: 600px) {
            :root {
                --width: 90%;
                --height: 300px;
            }
            .quote-overlay {
                font-size: 1.2rem;
                padding: 15px;
            }
        }
        /* Container for Mission & Vision */
        .h1{
            color:darkgreen;
            text-align:center;
            font-family:'Book Antiqua';
            font-size:60px;
            font-weight:bolder;
        }
        .mvcontainer {
            display: flex;
            justify-content: space-between;
            align-items: stretch;
            width: 86%;
            margin: 50px auto 50px 158px;
            gap: 20px;
        }

        /* Shared Box Styles */
        .box {
            flex: 1;
            padding: 10px;
            color: var(--text-color);
            font-family: var(--font-family);
            font-size: 1.2rem;
            border-radius: 15px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .box h2 {
            font-size: 2rem;
            margin-bottom: 15px;
        }
       

        /* Mission Box */
        .mission {
            background-color:palegoldenrod;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            margin-left: -80px;
        }

        /* Vision Box */
        .vision {
            background: var(--bg-vision);
            background-color:floralwhite;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }
        /*.box:hover h2{
            color: darkgoldenrod;
        }*/
        .box h2{
            text-align:center;
            font-family:'Bodoni MT';
            font-size:xx-large;
            padding:2px;
            color:darkred;
        }
        .box p{
            color:darkred;
            font-family:'Bodoni MT';
            font-size:20px;
            text-align:justify;
            padding:5px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .mvcontainer {
                flex-direction: column;
            }

            .box {
                font-size: 1rem;
                padding: 15px;
                justify-content:space-around;
            }
        }

        :root {
            --bg-color: #8B0000; /* Deep Red */
            --text-color: #FFFFFF; /* White */
            --font-family: 'Arial', sans-serif;
            --animation-duration: 0.5s;
        }

        /* Hero Container */
        .hero-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: var(--bg-color);
            color: var(--text-color);
            font-family: var(--font-family);
            padding: 50px;
            height: 300px;
            width: 70%;
            margin: 50px auto;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
            transition: background 0.3s ease-in-out;
        }

        /* Hero Text */
        :root {
            --bg-color: #8B0000;  /* Deep Red */
            --text-color: #FFFFFF;  /* White */
            --highlight-color: darkgoldenrod; /* Gold on Hover */
            --font-family: 'Arial', sans-serif;
        }

        /* Hero Container */
        .hero-container {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 80%;
            margin: 50px auto;
            padding: 40px;
            background-color:darkred;
            color: var(--text-color);
            font-family: var(--font-family);
            border-radius: 15px;
            overflow: hidden;
            min-height: 300px; /* Ensures content stays aligned */
        }

        /* Hero Text */
        .hero-text {
            flex: 1;
            font-size: 3rem;
            font-weight: bolder;
            line-height: 1.4;
            text-align: left;
            padding-right: 20px;
            width: 1208px;
            color:goldenrod;
            font-family:'Bradley Hand ITC';
        }

        /* Image Container (Initially Hidden) */
        .hero-image {
            flex: 1;
            text-align: center;
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.6s ease-in-out, transform 1s ease-in-out;
        }

        /* Show Image on Hover */
        .hero-container:hover .hero-image {
            opacity: 1;
            transform: translateY(0);
        }

        /* Image Styling */
        .hero-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            cursor: pointer;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero-container {
                flex-direction: column;
                text-align: center;
                padding: 30px;
            }

            .hero-text {
                padding: 0;
                font-size: 3rem;
                margin-bottom: 20px;
                text-align: center;
                color:goldenrod;
            }
        }
      /* Footer Container */
        .footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color:#C28840;
            color: white;
            padding: 20px;
            border-top: 3px solid #ffcc00;
            max-width: 100%;
        }

        /* Logo Styling */
        .footer-logo img {
            width: 253px;
            height: auto;
        }

        /* Address Styling */
        .footer-address {
            font-size: 16px;
            text-align: right;
            max-width: 300px;
            font-family:'Book Antiqua';
            font-weight:bold;
            color:darkred;
        }
        /* Responsive */
        @media (max-width: 600px) {
            .footer {
                flex-direction: column;
                text-align: center;
            }
            .footer-logo img {
                margin-bottom: 10px;
            }
            .footer-address {
                text-align: center;
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
                <li><a href="About.aspx">About Us</a></li>
                <li><a href="Our Works.aspx">Our Works</a></li>
                <li><a href="Lend a Hand.aspx">Lend A Hand</a></li>
                <li><a href="Cronicles and Bulletins.aspx">Cronicles & Bulletins</a></li>
                <li>
                    <asp:Button class="Dbutton" ID="Button1" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button1_Click" Text="DONATE NOW" Width="131px" Font-Names="Book Antiqua" />
                </li>
            </ul>
        </div>
    </div>
        <br />

        <!--Torn Container -->
   <div class="torn-container">
        <img src="children1.jpg" alt="Trust Image"/>
        <div class="quote-overlay">
           <p> <span style="font-size:xx-large;font-weight:bolder;font-family:'Eras ITC';">"Together, We Rise...Together, We Serve!</span></p>
            <p><span style="font-size:large;font-weight:bolder;font-family:'Eras ITC';">Lighting up lives through selfless service</span></p>

        </div>
    </div>
        

        <!--Our mission and vision -->
        <h1 class="h1">Our Mission & Vision</h1>
         <div class="mvcontainer">
        <!-- Our Mission -->
        <div class="box mission">
            <h2>MISSION</h2>
            <p>At Cure Trust & Research Center, we don’t just dream of a better world—we build it, one life at a time.We are the bridge between hardship and hope, the hands that lift, and the hearts that heal. Our mission is to empower, uplift, and transform the lives of more.We believe kindness is not a gesture—it’s a movement. Because true change isn’t about words. It’s about action. And action starts here.</p>
        </div>
        
        <!-- Our Vision -->
        <div class="box vision">
            <h2>VISION</h2>
            <p>A World Where No One Stands Alone
Imagine a world where every child is seen, every dream is nurtured, and every life is valued.

Our vision is to break cycles of struggle and replace them with opportunities, empowerment, and self-reliance.We are more than a trust.
We are a promise to the forgotten, a home for the lost, and a force for good.

And we won’t stop until compassion becomes the world’s strongest currency.
</p>
        </div>
    </div>
        <br />
        <!--Hero container-->
        <div class="hero-container">
        <!-- Hero Text -->
        <div class="hero-text">
            “A hero isn’t defined by words, but by actions – Meet the driving force, <br /><strong>Mr. Elayapari</strong>."
        </div>

        <!-- Hero Image (Initially Hidden) -->
        <div class="hero-image">
            <a href="About Us.aspx">
                <img src="person1.png" alt="Mr. Elayapari"/>
            </a>
        </div>
            </div>
            <br /><br />
<!--Footer-->
<footer class="footer">
        <div class="footer-logo">
            <img src="logo.jpg" alt="Trust Logo"/>
        </div>
        <div class="footer-address">
            <p>Cure Trust & Research Center</p>
            <p>8, MM Complex.</p>
            <p>Kalpalam Road,</p>
            <p>Goripalayam,</p>
            <p>Madurai - 625002</p>
             <p> Ph : 9360009019</p>
        </div>
    </footer>
    </form>
</body>
</html>

