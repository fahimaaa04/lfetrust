using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace LiFe_Static_Pages_Akshaya
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BeneficiaryDB;Integrated Security=False";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO Beneficiaries (Name, Email, PhoneNo, HelpNeeded) VALUES (@Name, @Email, @PhoneNo, @HelpNeeded)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@PhoneNo", txtPhone.Text.Trim());
                        cmd.Parameters.AddWithValue("@HelpNeeded", txtHelpNeeded.Text.Trim());

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Form submitted successfully! We will contact you soon.";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblMessage.Text = "Submission failed!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donate Now.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SIGN IN.aspx");
        }
    }
}