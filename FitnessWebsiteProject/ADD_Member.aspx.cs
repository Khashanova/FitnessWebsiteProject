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
    public partial class ADD_Member : System.Web.UI.Page
    {
        SqlConnection SQLCONN = new SqlConnection("Data Source=DESKTOP-U56KF88; Initial Catalog=ASPLOGIN; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            disp_data();
        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(UserName.Text) || string.IsNullOrEmpty(FirstName.Text) || string.IsNullOrEmpty(LastName.Text) || string.IsNullOrEmpty(Password.Text) || string.IsNullOrEmpty(Email.Text))
            {
                Response.Write("Please insert all required fields");
            }
            SqlCommand com = SQLCONN.CreateCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "insert into member values('" + FirstName.Text + "','" + LastName.Text + "','" + UserName.Text + "','" + Password.Text + "','" + Email.Text + "')";
            SQLCONN.Open();
            com.ExecuteNonQuery();
            SQLCONN.Close();
            FirstName.Text = "";
            LastName.Text = "";
            UserName.Text = "";
            Password.Text = "";
            Email.Text = "";
            disp_data();
        }
        public void disp_data()
        {
            SqlCommand com = SQLCONN.CreateCommand();
            com.CommandText = "select * from member";
            com.CommandType = CommandType.Text;
            SQLCONN.Open();
            com.ExecuteNonQuery();
            SQLCONN.Close();
            DataTable DT = new DataTable();
            SqlDataAdapter DA = new SqlDataAdapter(com);
            DA.Fill(DT);
            GridView1.DataSource = DT;
            GridView1.DataBind();

        }
    }
}