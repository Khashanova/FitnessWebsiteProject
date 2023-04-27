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
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection SQLCONN = new SqlConnection("Data Source=DESKTOP-U56KF88; Initial Catalog=ASPLOGIN; Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegisterOnClick(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void LoginOnClick(object sender, EventArgs e)
        {
            if (DropDownList.Text == "Adminstrator")
            {
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From Admins WHERE UserName ='" + UserName.Text + "'AND Password='" + Password.Text + "'", SQLCONN);
                DataTable DT = new DataTable();
                adapter.Fill(DT);
                
                if (DT.Rows.Count > 0)
                {
                    SqlDataAdapter mynewid = new SqlDataAdapter("Select id From Admins WHERE UserName ='" + UserName.Text + "'AND Password='" + Password.Text + "'", SQLCONN);
                    DataTable newidtable = new DataTable();
                    mynewid.Fill(newidtable);
                    string id = newidtable.Rows[0]["id"].ToString();
                    Session["ID"] = id;
                    Response.Redirect("Admin_home.aspx");
                }
                else
                {
                    
                    Response.Write("Insert Correct UserName or Password");

                }

            }
            else if (DropDownList.Text == "Member")
            {
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From member WHERE UserName ='" + UserName.Text + "'AND Password='" + Password.Text + "'", SQLCONN);
                DataTable DT = new DataTable();
                adapter.Fill(DT);
                if (DT.Rows.Count > 0)
                {
                    SqlDataAdapter mynewid = new SqlDataAdapter("Select id From member WHERE UserName ='" + UserName.Text + "'AND Password='" + Password.Text + "'", SQLCONN);
                    DataTable newidtable = new DataTable();
                    mynewid.Fill(newidtable);
                    string id = newidtable.Rows[0]["id"].ToString();
                    Session["ID"] = id;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("Insert Correct UserName or Password");

                }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}