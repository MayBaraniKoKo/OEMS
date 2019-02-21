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
    public partial class CreateExam1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddQues_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into CreatExam (ExamID,Question,Option1,Option2,Option3,Option4,Answer) values (@ExamID,@Question,@Option1,@Option2,@Option3,@Option4,@Answer)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@ExamID", DropDownList1.Text);
            sqlcomm.Parameters.AddWithValue("@Question", TextBox1.Text);
            sqlcomm.Parameters.AddWithValue("@Option1", TextBox2.Text);
            sqlcomm.Parameters.AddWithValue("@Option2", TextBox3.Text);
            sqlcomm.Parameters.AddWithValue("@Option3", TextBox4.Text);
            sqlcomm.Parameters.AddWithValue("@Option4", TextBox5.Text);
            sqlcomm.Parameters.AddWithValue("@Answer", TextBox6.Text);
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            Response.Redirect("~/CreateExam1.aspx");
        }

        protected void ViewQues_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}