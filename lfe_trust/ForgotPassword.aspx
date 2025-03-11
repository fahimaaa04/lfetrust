<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="lfe_trust.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        .container { margin: 50px auto; width: 300px; text-align: center; font-family: Arial, sans-serif; }
        .form-control { width: 100%; padding: 10px; margin: 10px 0; font-size: 16px; }
        .btn { padding: 10px 20px; background: #007bff; color: white; border: none; cursor: pointer; font-size: 16px; }
        .btn:hover { background: #0056b3; }
        .message { margin-top: 15px; font-size: 14px; color: green; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Forgot Password</h2>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
            <asp:Button ID="btnSendLink" runat="server" CssClass="btn" Text="Send Reset Link" OnClick="btnSendLink_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
