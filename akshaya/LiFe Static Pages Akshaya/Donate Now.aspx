<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donate Now.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Donate Now</title>
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
            /* Background container */
        .background-container {
            position: absolute;
            width: 1510px;
            height: 300px;
            background-color: palegoldenrod; 
            border-radius: 20px;
            z-index: 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-top:120px;
        }

            /*Donate container*/
            .donate-container {
            position: relative;
            width: 850px;
            height: 550px;
            overflow: hidden;
            border-radius: 20px;
            clip-path: polygon(10% 0%, 90% 0%, 100% 20%, 100% 80%, 90% 100%, 10% 100%, 0% 80%, 0% 20%);
            transition: all 0.3s ease-in-out;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            margin-left:350px;
        }

        .donate-container img {
            width: 850px;
            height: 550px;
            object-fit: cover;
            transition: filter 0.4s ease-in-out;
            border-style:groove;
            border-color:darkred;
        }

        .donate-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: darkred;
            font-size: 50px;
            font-weight: bolder;
            opacity: 0;
            transition: opacity 0.4s ease-in-out;
            text-shadow: 2px 2px 5px rgba(255, 215, 0, 0.8), 3px 3px 8px rgba(255, 165, 0, 0.7);
        }

        .donate-container:hover img {
            filter: blur(5px) brightness(0.6);
        }

        .donate-container:hover .donate-text {
            opacity: 1;
        }

        /*Donor Form*/
        /* Donor Form */
        .donor-form {
            width: 850px;
            background: linen;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
            margin-left:300px;
            margin-top:110px;
        }

        .donor-form h2 {
            text-align: center;
            color: darkred;
            font-family:'Lucida Calligraphy';
            font-size:xx-large;
            font-weight:bolder;
            text-shadow: 2px 2px 5px rgba(255, 215, 0, 0.8), 3px 3px 8px rgba(255, 165, 0, 0.7);
        }

        label {
            font-weight: bolder;
            display: block;
            margin-top: 10px;
            font-family:'Eras ITC';
            color:#C28840;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            margin-top: 15px;
            padding: 10px;
            width: 100%;
            background-color: darkgreen;
            font-family:'Eras ITC';
            color: white;
            font-weight:bolder;
            font-size:15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            align-items:center;
        }

        button:hover {
            background-color: #218838;
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
                <li>
                    <asp:Button class="Dbutton" ID="Button1" runat="server" BackColor="PaleGoldenrod" Font-Bold="True" ForeColor="DarkRed" Height="46px" OnClick="Button1_Click" Text="DONATE NOW" Width="131px" Font-Names="Book Antiqua" />
                </li>
            </ul>
        </div>
    </div>

       
        <br />
        <br />

        <div class="background-container"></div> <!-- Background behind donate container -->
        <!--Donate-container -->
        <div class="donate-container">
        <img src="chronicle.jpg" alt="Donate"/>
        <div class="donate-text">DONATE NOW</div>
    </div>

        <!-- Donor's Form-->
        <!-- Donor Application Form (Placed Below) -->
    <div class="donor-form">
        <h2>Donor's Details</h2>

        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required="required"/>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required="required"/>

        <label for="country">Country:</label>
        <input type="text" id="country" name="country" required="required"/>

        <label for="state">State:</label>
        <input type="text" id="state" name="state" required="required"/>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required="required"/>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required="required"/>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required="required"/>

        <label for="mobile">Mobile:</label>
        <input type="tel" id="mobile" name="mobile" title="" pattern="[0-9]{10}" required="required"/>

        <label for="amount">Donation Amount:</label>
        <input type="number" id="amount" name="amount" min="1" required="required"/>

        <button type="submit">Donate Now</button>
    </div>

        <br /><br /><br />

         <!--Footer-->
<footer class="footer">
    <!--Navigation Links (Left)-->
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
        </body>
</html>
