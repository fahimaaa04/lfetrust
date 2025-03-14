using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LiFe_Static_Pages_Akshaya
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"];

            if (!string.IsNullOrEmpty(email))
            {
                try
                {
                    using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
                    {
                        string query = "UPDATE signup SET IsVerified=1 WHERE Email=@Email";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@Email", email);
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                Label1.Text = "Verified User ✔";
                            }
                            else
                            {
                                Label1.Text = "Verification failed:Account not found or already verified";
                            }

                        }
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = "An error occured: " + ex.Message;
                }
            }
            else
            {
                Label1.Text = "Invalid verification link";
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            string storedHash = string.Empty;
            bool isVerified = false;

            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=dbtrust;Integrated Security=True"))
            {
                string query = "SELECT PasswordHash, IsVerified FROM signup WHERE Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            storedHash = reader["PasswordHash"].ToString();
                            isVerified = Convert.ToBoolean(reader["IsVerified"]);
                        }
                    }
                }
            }

            if (!string.IsNullOrEmpty(storedHash) && isVerified && BCrypt.Net.BCrypt.Verify(password, storedHash))
            {
                Response.Write("<script>alert('Login Successful');</script>");
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password');</script>");
                hlReset.Visible = true;
            }
        }
    }
}