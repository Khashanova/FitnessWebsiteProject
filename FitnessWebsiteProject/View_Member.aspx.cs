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
    public partial class View_Member : System.Web.UI.Page
    {
        SqlConnection SQLCONN = new SqlConnection("Data Source=DESKTOP-U56KF88; Initial Catalog=ASPLOGIN; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
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
            Member_View.DataSource = DT;
            Member_View.DataBind();

        }
    }
}