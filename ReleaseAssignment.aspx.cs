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
    public partial class ReleaseAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void YourGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Action")
            {
                UploadStatus.Text = "on click";
            }
        }

      /*  protected void LkButton1_Click(object sender, EventArgs e)
        {
            UploadStatus.Text = "on clcik";
            int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string filelocation = GridView1.Rows[rowIndex].Cells[3].Text;
            string FilePath = Server.MapPath("~/Uploadform/"+filelocation);
            UploadStatus.Text = FilePath;
            WebClient User = new WebClient();

            Byte[] FileBuffer = User.DownloadData(FilePath);

            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";

                Response.AddHeader("content-length", FileBuffer.Length.ToString());

                Response.BinaryWrite(FileBuffer);
            }
        } */
        
        /*     protected void Upload_Click(object sender, EventArgs e)
             {
                 string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                 SqlConnection sqlconn = new SqlConnection(mainconn);
                 string sqlquery = "Insert into ReleaseAssignment (AssignmentID,AssignmentName) values (@AssignmentID,@AssignmentName)";
                 SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                 sqlcomm.Parameters.AddWithValue("@AssignmentID", AssignmentID.Text);
                 sqlcomm.Parameters.AddWithValue("@AssignmentName", AssignmentName.Text);
                 sqlcomm.Parameters.AddWithValue("@AssignmentFile", FileUpload);
                 sqlconn.Open();
                 sqlcomm.ExecuteNonQuery();
                 sqlconn.Close();
            
                 if(FileUpload.HasFile)
                 {
                     try
                     {
                         string filename = System.IO.Path.GetFileName(FileUpload.FileName);
                         FileUpload.SaveAs(Server.MapPath("~/") + filename);
                         UploadStatus.Text = "Upload status: file uploaded!";
                     }
                     catch (Exception exp)
                     {
                         UploadStatus.Text = "Upload status: The file could not be uploaded. The following error occurs:" + exp.Message;
                     }
                 }
             } */

        protected void Upload_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploadform/" + filename));
                string path = "~/Uploadform/" + filename;

                string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "Insert into ReAssignment (AssignmentID,AssignmentName,AssignmentFile) values (@AssignmentID,@AssignmentName,@AssignmentFile)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlcomm.Parameters.AddWithValue("@AssignmentID",txtAssignmentID.Text);
                sqlcomm.Parameters.AddWithValue("@AssignmentName", TextBox2.Text);
                sqlcomm.Parameters.AddWithValue("@AssignmentFile", filename);
                UploadStatus.Text = "Upload status: file uploaded!";
                sqlconn.Open();
                sqlcomm.ExecuteNonQuery();
                sqlconn.Close();
                Response.Redirect("~/LectureLogin.aspx");
            }
          catch (Exception ex)
            {
              UploadStatus.Text = "Upload status: The file could not be uploaded. The following error occurs:" + ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filelocation = Server.HtmlEncode(((LinkButton)sender).Text);
            string FilePath = Server.MapPath("~/Uploadform/" + filelocation);
            UploadStatus.Text = FilePath;
            WebClient User = new WebClient();

            Byte[] FileBuffer = User.DownloadData(FilePath);

            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";

                Response.AddHeader("content-length", FileBuffer.Length.ToString());

                Response.BinaryWrite(FileBuffer);
            }
            

        }

       

        

        

        
    }
}