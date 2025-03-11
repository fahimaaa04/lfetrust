using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.UI;

namespace lfe_trust
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendLink_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            if (IsEmailExists(email)) // Check if email exists before proceeding
            {
                string resetToken = Guid.NewGuid().ToString();
                DateTime expiry = DateTime.Now.AddMinutes(30);

                using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
                {
                    string query = "UPDATE signup SET ResetToken = @ResetToken, ResetTokenExpiry = @Expiry WHERE Email = @Email";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@ResetToken", resetToken);
                        cmd.Parameters.AddWithValue("@Expiry", expiry);
                        cmd.Parameters.AddWithValue("@Email", email);
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            if (SendResetEmail(email, resetToken))
                            {
                                lblMessage.Text = "A password reset link has been sent to your email.";
                            }
                            else
                            {
                                lblMessage.Text = "Error sending email.";
                            }
                        }
                    }
                }
            }
            else
            {
                lblMessage.Text = "Email not found.";
            }
        }

        private bool IsEmailExists(string email)
        {
            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
            {
                string query = "SELECT COUNT(*) FROM signup WHERE Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        private bool SendResetEmail(string email, string resetToken)
        {
            try
            {
                string resetLink = "https://localhost:44350/ResetPassword.aspx?token=" + resetToken;

                MailMessage mail = new MailMessage
                {
                    From = new MailAddress("fairycrafts04@gmail.com"),
                    Subject = "Reset Your Password",
                    Body = "Click <a href='" + resetLink + "'>here</a> to reset your password.",
                    IsBodyHtml = true
                };
                mail.To.Add(email);

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("fairycrafts04@gmail.com", "cdzm nkwe sncl jldf"),
                    EnableSsl = true,
                    Timeout = 30000
                };

                smtp.Send(mail);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
