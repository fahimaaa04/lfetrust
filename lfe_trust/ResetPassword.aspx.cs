using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lfe_trust
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            string token = Request.QueryString["token"];
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (string.IsNullOrEmpty(token))
            {
                lblMessage.Text = "Invalid password reset link.";
                return;
            }

            if (newPassword != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newPassword);

            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
            {
                string query = @"UPDATE signup 
                             SET PasswordHash = @PasswordHash, ResetToken = NULL, ResetTokenExpiry = NULL 
                             WHERE ResetToken = @ResetToken AND ResetTokenExpiry > GETDATE()";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@PasswordHash", hashedPassword);
                    cmd.Parameters.AddWithValue("@ResetToken", token);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Your password has been reset successfully. Redirecting to login page...";
                        Response.AddHeader("REFRESH", "3;URL=VerifyAccount.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Password reset link is invalid or has expired.";
                    }
                }
            }
        }
    }
}
