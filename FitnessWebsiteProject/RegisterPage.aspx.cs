using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitnessWebsiteProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void RegOnClick(object sender, EventArgs e)
        {
            SqlConnection SQLCONN = new SqlConnection("Data Source=DESKTOP-U56KF88; Initial Catalog=ASPLOGIN; Integrated Security=True");
            if (string.IsNullOrEmpty(UserName.Text) || string.IsNullOrEmpty(FirstName.Text) || string.IsNullOrEmpty(LastName.Text) || string.IsNullOrEmpty(Password.Text)  || string.IsNullOrEmpty(Email.Text))
            {
                Response.Write("Please insert all required fields");
            }
            else
            {
                String username = UserName.Text;
                String firstName = FirstName.Text;
                String lastName = LastName.Text;
                String password = Password.Text;
                String email =    Email.Text;
                int id = 0;

                SqlCommand com = new SqlCommand(@"INSERT INTO[dbo].[member]
                        ([UserName]
                        ,[Password]
                        ,[FirstName]
                        ,[LastName]
                        ,[Email])
                        VALUES ('" + username + "','" + firstName + "','" + lastName + "','" + password + "','" + email + "')", SQLCONN);
                SQLCONN.Open();
                com.ExecuteNonQuery();
                SQLCONN.Close();






                Response.Redirect("loginpage.aspx");
            
            
            
            
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}