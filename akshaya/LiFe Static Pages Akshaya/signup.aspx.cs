using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using BCrypt.Net;

namespace LiFe_Static_Pages_Akshaya
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string pass = TextBox3.Text;

            //hashing password

            string hashedpass = BCrypt.Net.BCrypt.HashPassword(pass);

            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
            {
                string query = "INSERT INTO signup (Name,Email,PasswordHash,IsVerified)VALUES (@Name,@Email,@PasswordHash,0)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@PasswordHash", hashedpass);
                    con.Open();
                    cmd.ExecuteNonQuery();


                }

            }
            string verification = "https://localhost:44350/VerifyAccount.aspx?email=" + email;
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("fairycrafts04@gmail.com");
            mail.To.Add(email);
            mail.Subject = "Verify your account";
            mail.Body = "click <a href=' " + verification + "'>here </a> to verify your account";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("fairycrafts04@gmail.com", "cdzm nkwe sncl jldf");
            smtp.EnableSsl = true;

            smtp.Timeout = 30000;
            smtp.Send(mail);

            Label1.Text = "Signup successfull !! please check your email to verify  your account";
        }
    }
}
