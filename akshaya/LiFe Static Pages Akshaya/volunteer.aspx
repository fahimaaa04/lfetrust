<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="LiFe_Static_Pages_Akshaya.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <style>
                .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 800px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            display: block;
            font-weight: bold;
            color:brown;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .btn:hover {
            background-color: #218838;
        }
        .error {
            color: red;
            font-size: 12px;
        }
        .inline-radio {
            display: flex;
            gap: 15px;
            align-items: center;
        }
        .auto-style1 {
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 800px;
            max-width: 90%;
            animation: slideIn 1s ease-in-out, floatUp 1.5s ease-in-out infinite alternate;
            transition: all 0.3s ease-in-out;
            position: relative;
            text-align: center;
            left: 0px;
            top: 0px;
            height: 1426px;
            padding: 20px;
            background-color: white;
        }
    </style>
    <script>

        function checkQualification() {
            var ddl = document.getElementById('<%= ddlQualification.ClientID %>');
                var txtOther = document.getElementById('<%= txtOtherQualification.ClientID %>');

            if (ddl.value === "Other") {
                txtOther.style.display = "block";
            } else {
                txtOther.style.display = "none";
            }
        }


    </script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2>Volunteer Registration</h2>
            <div class="form-group">
                <label>Full Name:</label>
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                    ErrorMessage="Full Name is required" CssClass="error"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revFullName" runat="server" ControlToValidate="txtFullName"
                    ValidationExpression="^[A-Za-z\s.]+$" ErrorMessage="Only alphabets and '.' are allowed" CssClass="error"></asp:RegularExpressionValidator>
            </div>
           
            <div class="form-group">
                <label>Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender"
                    InitialValue="" ErrorMessage="Please select a gender" CssClass="error"></asp:RequiredFieldValidator>
            </div>
           
           <div class="form-group">
                <label>Date of Birth:</label>
                <asp:TextBox ID="txtDateOfBirth" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDateOfBirth"
                    ErrorMessage="Date of Birth is required" CssClass="error"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvDOB" runat="server" ControlToValidate="txtDateOfBirth"
                    ErrorMessage="You must be at least 18 years old" CssClass="error"
                    OnServerValidate="ValidateDOB"></asp:CustomValidator>
            </div>


           
           <div class="form-group">
    <label>Email:</label>
    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>

    <!-- Required Field Validation -->
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Email is required" CssClass="error"></asp:RequiredFieldValidator>

    <!-- Regular Expression Validation -->
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
        ErrorMessage="Enter a valid email address" CssClass="error"></asp:RegularExpressionValidator>

    <!-- Custom Domain Validation -->
    <asp:CustomValidator ID="cvEmail" runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Please enter a valid email (e.g., @gmail.com, @yahoo.com, @outlook.com)"
        CssClass="error" OnServerValidate="ValidateEmailDomain"></asp:CustomValidator>
</div>
           
           <div class="form-group">
                <label>Phone Number:</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhoneNumber"
                    ErrorMessage="Phone number is required" CssClass="error"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber"
                    ValidationExpression="^[6789]\d{9}$" ErrorMessage="Enter a valid 10-digit Indian mobile number" CssClass="error"></asp:RegularExpressionValidator>
            </div>

           
            <div class="form-group">
                <label>Emergency Phone Number:</label>
                <asp:TextBox ID="txtEmergencyPhone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmergencyPhone" runat="server" ControlToValidate="txtEmergencyPhone"
                    ValidationExpression="^[6789]\d{9}$" ErrorMessage="Enter a valid 10-digit Indian mobile number" CssClass="error"></asp:RegularExpressionValidator>
            </div>
           
            <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address is required" CssClass="error"></asp:RequiredFieldValidator>
            </div>

            <!-- New Fields for City/Village, District, and Pin Code -->
            <div class="form-group">
                <label>City/Village:</label>
                <asp:TextBox ID="txtCityVillage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCityVillage" runat="server" ControlToValidate="txtCityVillage"
                    ErrorMessage="City/Village is required" CssClass="error"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>District:</label>
                <asp:TextBox ID="txtDistrict" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDistrict" runat="server" ControlToValidate="txtDistrict"
                    ErrorMessage="District is required" CssClass="error"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Pin Code:</label>
                <asp:TextBox ID="txtPinCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" ControlToValidate="txtPinCode"
                    ErrorMessage="Pin Code is required" CssClass="error"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPinCode" runat="server" ControlToValidate="txtPinCode"
                    ValidationExpression="^\d{6}$" ErrorMessage="Pin Code must be exactly 6 digits" CssClass="error"></asp:RegularExpressionValidator>
            </div>
           
         <div class="form-group">
                <label>Volunteering Type:</label>
                <div class="inline-radio">
                    <asp:RadioButton ID="rbFullTime" runat="server" GroupName="VolunteeringType" Text="Full-Time" />
                    <asp:RadioButton ID="rbPartTime" runat="server" GroupName="VolunteeringType" Text="Part-Time" />
                </div>
                <asp:CustomValidator ID="cvVolunteeringType" runat="server"
                    ErrorMessage="Please select a volunteering type" CssClass="error"
                    ClientValidationFunction="validateVolunteeringType"></asp:CustomValidator>
            </div>


           
           <div class="form-group">
                <label>Qualification:</label>
<asp:DropDownList ID="ddlQualification" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlQualification_SelectedIndexChanged" onchange="checkQualification()">
                    <asp:ListItem Text="Select Qualification" Value="" />
                    <asp:ListItem Text="High School" Value="High School" />
                    <asp:ListItem Text="Diploma" Value="Diploma" />
                    <asp:ListItem Text="B.Sc Nursing" Value="B.Sc Nursing" />
                    <asp:ListItem Text="BPT (Physiotherapy)" Value="BPT" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="ddlQualification"
                    InitialValue="" ErrorMessage="Please select a qualification" CssClass="error"></asp:RequiredFieldValidator>
               
                <asp:TextBox ID="txtOtherQualification" runat="server" Placeholder="Enter Qualification" Style="display:none;"></asp:TextBox>
            </div>
           
            <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
