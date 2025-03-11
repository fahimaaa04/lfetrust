<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm7" %>

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
        /*Beneficiary container*/

        .bcontainer {
            background: white;
            padding: 25px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
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
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
