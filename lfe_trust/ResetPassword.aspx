<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="lfe_trust.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <style>
        .container { margin: 50px auto; width: 377px; 
text-align: center; font-family: Arial, sans-serif; }
        .form-control { width: 100%; padding: 10px; margin: 10px 0; font-size: 16px; }
        .btn { padding: 10px 20px; background: #007bff; color: white; border: none; cursor: pointer; font-size: 16px; }
        .btn:hover { background: #0056b3; }
        .message { margin-top: 15px; font-size: 14px; color: green; }
        .error { color: red; font-size: 12px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            <h2>Reset Your Password</h2>
            
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword"
                ErrorMessage="New Password is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword"
                ErrorMessage="Password must be at least 6 characters long and contain uppercase, lowercase, and a number."
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,}$" CssClass="error" Display="Dynamic"></asp:RegularExpressionValidator>
            
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm Password is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match." CssClass="error" Display="Dynamic"></asp:CompareValidator>

            <asp:Button ID="btnReset" runat="server" CssClass="btn" Text="Update Password" OnClick="btnReset_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
