using System;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using BCrypt.Net;

namespace lfe_trust
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string email = TextBox2.Text.Trim();
            string pass = TextBox3.Text;

            // Hashing password securely
            string hashedPass = BCrypt.Net.BCrypt.HashPassword(pass);

            // Database connection string
            string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string query = "INSERT INTO signup (Name, Email, PasswordHash, IsVerified) VALUES (@Name, @Email, @PasswordHash, 0)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@PasswordHash", hashedPass);
                        cmd.ExecuteNonQuery();
                    }
                }

                // Generate verification link
                string verificationLink = "https://localhost:44350/VerifyAccount.aspx?email=" + email;

                // Sending verification email
                SendVerificationEmail(email, verificationLink);

                Label1.Text = "Signup successful! Please check your email to verify your account.";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                Label1.Text = "Error: " + ex.Message;
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void SendVerificationEmail(string userEmail, string verificationLink)
        {
            try
            {
                MailMessage mail = new MailMessage
                {
                    From = new MailAddress("fairycrafts04@gmail.com"),
                    Subject = "Verify your account",
                    Body = "Click <a href='" + verificationLink + "'>here</a> to verify your account.",
                    IsBodyHtml = true
                };

                mail.To.Add(userEmail);

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("fairycrafts04@gmail.com", "your-app-password-here");
                    smtp.EnableSsl = true;
                    smtp.Timeout = 30000;
                    smtp.Send(mail);
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Email sending failed: " + ex.Message;
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
