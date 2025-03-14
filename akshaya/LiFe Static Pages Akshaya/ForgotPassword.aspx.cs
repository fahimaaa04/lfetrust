using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LiFe_Static_Pages_Akshaya
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendLink_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

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
                        string resetLink = "https://localhost:44323/ResetPassword.aspx?token=" + resetToken;

                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("fairycrafts04@gmail.com");
                        mail.To.Add(email);
                        mail.Subject = "Reset Your Password";
                        mail.Body = "Click <a href='" + resetLink + "'>here</a> to reset your password.";
                        mail.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                        smtp.Credentials = new NetworkCredential("fairycrafts04@gmail.com", "cdzm nkwe sncl jldf");
                        smtp.EnableSsl = true;
                        smtp.Timeout = 30000; // 30 seconds

                        try
                        {
                            smtp.Send(mail);
                            lblMessage.Text = "A password reset link has been sent to your email.";
                        }
                        catch (Exception ex)
                        {
                            lblMessage.Text = "Error sending email: " + ex.Message;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Email not found.";
                    }
                }
            }
        }
    }
}