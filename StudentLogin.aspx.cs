using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEMS
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SAssignment.aspx");
        }

        protected void TakeExam_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TakeExam.aspx");
        }

        protected void StudentViewAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentViewAssignment.aspx");
        }
    }
}