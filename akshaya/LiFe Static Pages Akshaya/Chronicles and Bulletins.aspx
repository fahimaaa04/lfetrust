<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chronicles and Bulletins.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Cronicles & Bulletins</title>
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
            animation: scroll 20s linear infinite;
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

        /*Heading Container*/
        .headingcontainer{
            height:150px;
            background-color:palegoldenrod;
        }
        .headingp{
            padding-top:25px;
            font-family:'Book Antiqua';
            color:black;
            font-size:40px;
            font-weight:bolder;
            margin-left:10px;
        }
        /*review containers*/
        .containers {
            display: flex;
            align-items: center;
            width: 1000px; /* Adjust as needed */
            background-color:linen;
            box-shadow:0 4px 10px rgb(239 235 26);
            padding: 20px;
            margin-bottom: 10px; /* Space between containers */
            border-radius: 8px;
            transition: transform 0.3s ease-in-out;
            position: relative;
            margin-left:250px;
            height:200px;
            margin-top:50px;
            color:beige;
        }
        .containers:hover{
            transform: scale(1.1);
        }

        /* Image styling */
        .image-containers {
            flex: 1;
            overflow: hidden;
            border-radius: 10px;
        }
        .image-containers img {
            width: 300px;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow:0 4px 10px rgb(239 235 26);
        }
        /* Text styling */
        .text-containers {
            flex: 2;
            padding-left: 20px;
            color:beige;
        }
       .text-containers h3 {
            color: darkred;
            margin-bottom: 10px;
            font-family:'Eras ITC';
            font-size:x-large;
        }
        .text-containers p {
            color: darkred;
            font-family:'Lucida Calligraphy';
            font-size:large;
        }

        /* Finishing Line */
        .finishing-line {
            width: 700px; /* Match container width */
            height: 5px;
            background: linear-gradient(to right, darkred, goldenrod, darkred); /* Gradient effect */
            border-radius: 50px; /* Rounded edges */
            box-shadow: 0 0 10px rgba(139, 0, 0, 0.8); /* Glow effect */
            margin-bottom: 20px;
            margin-left:418px;
            margin-top:10px;
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
                <li>
                   <asp:Button class="Dbutton" ID="Button2" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button2_Click" Text="SIGN IN" Width="131px" Font-Names="Book Antiqua" />
               </li> 
            </ul>
        </div>
    </div><br /><br />

        <!-- heading container -->
        <div class="headingcontainer">
            <p class="headingp">
                CHRONICLES <span style="font-size:75px;color:darkred;font-weight:bolder;">&</span> BULLETINS
            </p>
        </div>

        <!--Review Containers -->
         <!-- First Container -->
    <div class="containers">
        <div class="image-containers">
            <img src="disabled1.jpg" alt="Image 1"/>
        </div>
        <div class="text-containers">
            <h3>From Struggle to Strength</h3>
            <p>Once burdened by mobility challenges, [Name] faced daily hardships. With the support of a charitable trust, he now receives a NeoMotion mobility device, restoring his independence. Surrounded by well-wishers, his journey shifts from struggle to hope, proving that support can change lives.</p>
        </div>
    </div>
    <div class="finishing-line"></div>

    <!-- Second Container -->
    <div class="containers">
        <div class="image-containers">
            <img src="chroniclereview1.jpg" alt="Image 2"/>
        </div>
        <div class="text-containers">
            <h3>A Journey from Struggle to Hope</h3>
            <p>Once burdened by illness and financial struggles, [Name] had lost all hope. Unable to afford treatment, his days were filled with uncertainty and despair. But today, as he receives medical aid through the trust, his expression has changed. Relief replaces hardship, and gratitude shines through—proof that a helping hand can transform a life.</p>
        </div>
    </div>
    <div class="finishing-line"></div>

    <!-- Third Container -->
    <div class="containers">
        <div class="image-containers">
            <img src="chroniclereview3.jpg" alt="Image 3"/>
        </div>
        <div class="text-containers">
            <h3>Empowering Lives Through Support</h3>
            <p>Once struggling with daily challenges, these individuals now receive essential aid through a trust’s initiative. With renewed hope and resources in hand, they step forward with confidence, proving that a little support can create a brighter future.</p>
        </div>
    </div>
    <div class="finishing-line"></div>
       
        <br />
        <br />

         <!--Footer-->
<footer class="footer">
    <!--Navigation Links (Left)-->
    <div class="footer-nav">
        <a href="Homepage.aspx">Home</a>
        <a href="About Us.aspx">About Us</a>
        <a href="OurWorks.aspx">Our Works</a>
        <a href="Lend a Hand.aspx">Lend A Hand</a>
        <a href="Chronicles and Bulletins.aspx">Chronicles & Bulletins</a>
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
