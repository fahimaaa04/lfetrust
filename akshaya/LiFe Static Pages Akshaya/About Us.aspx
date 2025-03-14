<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/About Us</title>
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
        /*h1*/
        .h1{
            font-family:'Book Antiqua';
            color:darkgreen;
            font-size:60px;
            text-align:center;
        }
        /*aboutcontainer*/
        .p1{
            font-family:'Bodoni MT'; 
            text-align: justify; 
            color:darkred;  
            font-size: x-large;
            padding:20px;
            margin-left: -50px;
        }
        .aboutcontainer {
            width: 1289px;
            margin-left: 130px;
            transition: border 1s ease, box-shadow 1s ease;
        }
        /*torn container*/
        .torn-container {
            position: relative;
            background:#C28840 ;
            padding: 40px;
            width: 95%;
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
        }
        /*overlapping containers*/
        /* Main container */
        .overlapcontainer1 {
            position: relative;
            width: 60%;
            margin: 50px auto;
            display: flex;
            align-items: center;
        }

        /* Image container */
        .overlapimage img {
            width: 550px;
            display: block;
            border-radius: 20px;
            margin-left:-180px;
            margin-top:60px;
        }

        /* Overlapping text container (Right Side) */
        .overlaptext{
            position: absolute;
            right: -20%; /* Push it outside the right edge */
            top: 70%;
            transform: translateY(-50%);
            background: rgba(0, 0, 0, 0);
            padding: 20px;
            width: 650px;
            border-radius: 10px;
            text-align: center;
            z-index: 2;
        }
        .overlaptext:hover{
             box-shadow: 0 4px 7px darkgoldenrod;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .overlapcontainer1 {
                flex-direction: column;
            }
            .overlaptext {
                position: relative;
                right: 0;
                width: 650px;
                transform: translateY(0);
                margin-top: -20px;
            }
        }
           .overlapcontainer2 {
                position: relative;
                width: 80%;
                margin: 50px auto;
                display: flex;
                align-items: center;
                justify-content: flex-end; /* Align image to the right */
            }

              .overlapimage1 img {
                    width: 414px;
                    display: block;
                    border-radius: 20px;
                    margin-right:55px;
                    margin-left: 180px;
                    margin-top:50px;
        }

              .overlaptext1 {
                    flex: 1;
                    position: absolute;
                    left: 0 ;
                    top: 70%;
                    padding: 20px;
                    width: 650px;
                    background: rgba(0, 0, 0, 0);
                    border-radius:10px;
                    transform: translateY(-50%);
                    text-align: center;
                    z-index: 2;
              }
                .overlaptext1:hover {
                    box-shadow: 0 4px 7px darkgoldenrod;
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
                <li><a href="Homepage.aspx">Home</a>&nbsp;&nbsp;&nbsp; |</li>
                <li><a href="About Us.aspx">About Us</a>&nbsp;&nbsp;&nbsp; |</li>
                <li><a href="OurWorks.aspx">Our Works</a>&nbsp;&nbsp;&nbsp; |</li>
                <li><a href="Lend a Hand.aspx">Lend A Hand</a>&nbsp;&nbsp;&nbsp; |</li>
                <li><a href="Chronicles and Bulletins.aspx">Chronicles & Bulletins</a>&nbsp;&nbsp;&nbsp; |</li>
                <li><a href="Become a Beneficiary.aspx">Become a Beneficiary</a></li>

                <li>
                    <asp:Button class="Dbutton" ID="Button1" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button1_Click" Text="DONATE NOW" Width="131px" Font-Names="Book Antiqua" />
                </li>
                 <li>
                   <asp:Button class="Dbutton" ID="Button2" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button2_Click" Text="SIGN IN" Width="131px" Font-Names="Book Antiqua" />
               </li>   
            </ul>
        </div>
    </div>
        <br />
        <br />

        <!--About us-->
        <h1 class="h1">What we Aim?</h1>
        <div class="aboutcontainer">
            <p class="p1">At Cure Trust & Research Center, we are dedicated to making a meaningful impact in the lives of those in need. Founded with a vision to drive positive change, we strive to uplift communities through our various initiatives, focusing on healthcare, education, social welfare, and community development.
                We empower individuals and transform communities by providing essential resources, spreading awareness, and fostering sustainable development. Through compassion, dedication, and collaboration, we aim to create a future where every individual has the opportunity to thrive.
                We look forward to empower, uplift, and transform the lives of:<br /><br />
<span style="font-weight:bolder;">
Children longing for education,
Students seeking opportunities,
Disabled individuals fighting for independence,
Orphans yearning for love,
Families struggling with healthcare.
Through education, employment support, healthcare initiatives, and humanitarian aid, we create pathways for a future where no one is left behind.
    </span>
            </p>
        </div>
        <!-- torn container-->
        <div class="torn-container">
        <p></p>
    </div>
        <br />

        <!--overlapping containers-->
        <div class="overlapcontainer1">
        <!-- Image Container -->
        <div class="overlapimage">
            <img src="disabled group.jpg" alt="Sample Image"/>
        </div>

        <!-- Overlapping Text Container on the Right -->
        <div class="overlaptext">
            <h2 style="font-weight:bolder;color:darkgreen;font-family:'Bradley Hand ITC';font-size:30px;">Why do we exist?</h2>
            <p style="color:black;font-family:'Bodoni MT';font-size:21px;">We exist to bring hope and support to those facing hardship, whether due to poverty, illness, disability, or social neglect. Through rehabilitation programs, blood and organ donation drives, and employment opportunities for the disabled, we strive to uplift lives. We also provide dignified funeral services for those in need and work toward women and child welfare, ensuring a safer, more inclusive society. Our mission extends to environmental conservation, promoting sustainability for future generations. By bridging gaps in healthcare, employment, and social support, we aim to create a world where no one is left behind.</p>
        </div>
    </div>
        <br />
        <div class="overlapcontainer2">
    <!-- Overlapping Text Container on the Left -->
    <div class="overlaptext1">
        <h2 style="font-weight:bolder;color:darkgreen;font-family:'Bradley Hand ITC';font-size:30px;">Who are the beneficiaries?</h2>
        <p style="color:black;font-family:'Bodoni MT';font-size:21px;">
           Our mission extends to those in dire need of support, care, and a helping hand to rebuild their lives. We serve individuals and families facing hardship, including those in need of rehabilitation, people requiring urgent blood and organ donations, and the underprivileged struggling with essential medical care. Our services also include funeral assistance for those without financial means, ensuring dignity even in passing. Additionally, we focus on the rehabilitation and employment of disabled individuals, empowering them with opportunities to lead independent and fulfilling lives. Through these efforts, we strive to create a compassionate, inclusive, and supportive community for all.</p>
    </div>

    <!-- Image Container on the Right -->
    <div class="overlapimage1">
        <img src="disabled2.jpg" alt="Sample Image"/>
    </div>
</div>
        <br /><br />
        <br /><br />
        <br /><br />

        <!-- Footer -->
<footer class="footer">
    <!-- Navigation Links (Left) -->
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

