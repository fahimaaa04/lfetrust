<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyAccount.aspx.cs" Inherits="lfe_trust.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Verify Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #007bff, #00c6ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0px 0px 5px rgba(0, 123, 255, 0.5);
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .message {
            margin-top: 15px;
            font-size: 14px;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Welcome back! Sign in to access your account</h2>

            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Green" Text="Verifying..."></asp:Label>
            
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                <asp:RegularExpressionValidator 
                    ID="emailValidator" 
                    runat="server" 
                    ControlToValidate="txtEmail"
                    ErrorMessage="Invalid Email Format" 
                    ForeColor="Red"
                    Display="Dynamic"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" />
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="passwordValidator" 
                    runat="server" 
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required" 
                    ForeColor="Red"
                    Display="Dynamic" />
            </div>

            <asp:Button ID="btnSignIn" runat="server" CssClass="btn" Text="Sign In" OnClick="btnSignIn_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" CssClass="message" />
       <asp:HyperLink ID="hlReset" runat="server" NavigateUrl="ForgotPassword.aspx" Visible="false">

</asp:HyperLink><a href="ForgotPassword.aspx">Forgot your password? Reset here</a>
            </div>
    </form>
</body>
</html>
