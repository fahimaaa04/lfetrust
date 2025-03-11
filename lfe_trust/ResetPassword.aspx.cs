using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace lfe_trust
{
    public partial class WebForm5 : Page
    {
        protected void btnReset_Click(object sender, EventArgs e)
        {
            string token = Request.QueryString["token"];
            if (string.IsNullOrEmpty(token))
            {
                lblMessage.Text = "Invalid password reset link.";
                return;
            }

            if (txtNewPassword.Text != txtConfirmPassword.Text)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
            using (SqlCommand cmd = new SqlCommand(@"UPDATE signup 
                SET PasswordHash = @PasswordHash, ResetToken = NULL, ResetTokenExpiry = NULL 
                WHERE ResetToken = @ResetToken AND ResetTokenExpiry > GETDATE()", con))
            {
                cmd.Parameters.AddWithValue("@PasswordHash", BCrypt.Net.BCrypt.HashPassword(txtNewPassword.Text));
                cmd.Parameters.AddWithValue("@ResetToken", token);
                con.Open();

                lblMessage.Text = cmd.ExecuteNonQuery() > 0
                    ? "Your password has been reset successfully. Redirecting to login page..."
                    : "Password reset link is invalid or has expired.";

                if (lblMessage.Text.Contains("successfully"))
                    Response.AddHeader("REFRESH", "3;URL=VerifyAccount.aspx");
            }
        }
    }
}
