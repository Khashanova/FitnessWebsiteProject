using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace FitnessWebsiteProject
{
    public partial class PDFpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Set the sender address
            MailMessage message = new MailMessage();
            message.From = new MailAddress("ofit.organization@gmail.com");

            // Retrieve the current user's email using the SqlDataSource component
            string userEmail = "";

            using (SqlConnection connection = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("SELECT email FROM member WHERE id = @id", connection))
                {
                    command.Parameters.AddWithValue("@id", Session["ID"]);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            userEmail = reader["email"].ToString();
                        }
                    }
                }
            }

            // Set the recipient address
            message.To.Add(userEmail);

            // Set the subject and body of the message
            message.Subject = "It Was a Success!!";
            message.IsBodyHtml = true;
            message.Body = "<html><head><style>body { font-family: Arial, sans-serif;display:flex;justify-content:center;allign-items:center;} h1 { color: blue; }</style></head><body><h1>Successful Payment</h1><p>Thank you for your payment!</p></body></html>";

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("ofit.organization@gmail.com", "crusakvcbgmfjznz");
            smtp.Send(message);
            Response.Redirect("PaymentSuccess.aspx");


        }
    }
}