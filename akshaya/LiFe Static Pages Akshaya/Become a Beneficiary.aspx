<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Become a Beneficiary.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cure Trust/Beneficiaries</title>
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
        /*Beneficiary container*/

        .bcontainer {
            background: linen;
            padding: 25px;
            width: 800px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-left:350px;
        }
        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: darkred;
            font-family:'Lucida Calligraphy';
            font-size:xx-large;
            font-weight:bolder;
            text-shadow: 2px 2px 5px rgba(255, 215, 0, 0.8), 3px 3px 8px rgba(255, 165, 0, 0.7);
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            text-align: left;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        .error {
            color: red;
            font-size: 12px;
            text-align: left;
            display: block;
            margin-top: 5px;
        }
        .btn-submit {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            margin-top: 15px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-submit:hover {
            background: #0056b3;
        }
        .message {
            margin-top: 15px;
            font-size: 14px;
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
    </div>

       
        <br />
        <br />
        <div class="bcontainer">
            <h2>Become a Beneficiary</h2>

            <label>Name:</label>
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" CssClass="error" ErrorMessage="Name is required" />

            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" ErrorMessage="Email is required" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="error"
                ErrorMessage="Invalid Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />

            <label>Phone Number:</label>
            <asp:TextBox ID="txtPhone" runat="server" />
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" CssClass="error" ErrorMessage="Phone number is required" />
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" CssClass="error"
                ErrorMessage="Invalid phone number" ValidationExpression="^\d{10}$" />

            <label>Type of Help Needed:</label>
            <asp:TextBox ID="txtHelpNeeded" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvHelp" runat="server" ControlToValidate="txtHelpNeeded" CssClass="error" ErrorMessage="This field is required" />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>

        <br />
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
