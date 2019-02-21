using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Web.ClientServices;

namespace OEMS
{
    public partial class AdminCreateExamID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into Exam (ExamName) values (@ExamName)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@ExamName", TextBox2.Text);
            Label4.Text = "You created Exam Name successfully!";
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            Response.Redirect("~/AdminCreateExamID.aspx");
        }
    }
}