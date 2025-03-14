<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        font-family: 'Book Antiqua';
        background: linen;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background: linen;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px darkred;
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
        background: darkred;
        color: bisque;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background-color:firebrick;
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
     <h2>Sign Up</h2>
     
     <div class="form-group">
         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
     </div>

     <div class="form-group">
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
     </div>

     <div class="form-group">
         <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
     </div>

     <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Sign Up" OnClick="Button1_Click" Font-Bold="True" Font-Names="Book Antiqua" />

     <asp:Label ID="Label1" runat="server" CssClass="message" Text=""></asp:Label>
 </div>
    </form>
</body>
</html>
