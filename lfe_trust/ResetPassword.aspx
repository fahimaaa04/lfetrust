<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="lfe_trust.WebForm5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <style>
        .container { margin: 50px auto; width: 608px; 
            text-align: center; font-family: Arial, sans-serif; }
        .form-control { width: 100%; padding: 10px; margin: 10px 0; font-size: 16px; }
        .btn { padding: 10px 20px; background: #007bff; color: white; border: none; cursor: pointer; font-size: 16px; }
        .btn:hover { background: #0056b3; }
        .message { margin-top: 15px; font-size: 14px; color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Reset Your Password</h2>

            <!-- New Password Field -->
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword"
                ErrorMessage="New password is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword"
                ValidationExpression="^(?=.*[A-Z])(?=.*\d).{8,}$"
                ErrorMessage="Password must be at least 8 characters, contain 1 uppercase and 1 number." ForeColor="Red" Display="Dynamic" />

            <!-- Confirm Password Field -->
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm password is required." ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ID="cvPasswords" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" />

            <!-- Submit Button -->
            <asp:Button ID="btnReset" runat="server" CssClass="btn" Text="Update Password" OnClick="btnReset_Click" />

            <!-- Message Label -->
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
