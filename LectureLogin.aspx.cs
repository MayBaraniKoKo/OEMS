using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEMS
{
    public partial class LectureLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReleaseAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ReleaseAssignment.aspx");
        }

        protected void CreateExam_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateExam.aspx");
        }

        protected void ViewAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LectureViewAssignment.aspx");
        }
    }
}