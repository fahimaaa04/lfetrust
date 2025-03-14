<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
     .container { margin: 50px auto; width: 300px; text-align: center; font-family: 'Book Antiqua'; }
     .form-control { width: 100%; padding: 10px; margin: 10px 0; font-size: 16px; }
     .btn { padding: 10px 20px; background: darkred; color: bisque; border: none; cursor: pointer; font-size: 16px; }
     .btn:hover { background-color:firebrick; }
     .message { margin-top: 15px; font-size: 14px; color: green; }
 </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
    <h2>Reset Your Password</h2>
    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
    <asp:Button ID="btnReset" runat="server" CssClass="btn" Text="Update Password" OnClick="btnReset_Click" BackColor="DarkRed" ForeColor="Bisque" Font-Names="Book Antiqua" />
    <br />
    <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
</div>
    </form>
</body>
</html>
