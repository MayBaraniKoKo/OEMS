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
    public partial class SubmitAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
           
            try
            {
                string filename = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/SubmitAssignment/" + filename));
                string path = "~/SubmitAssignment/" + filename;

                string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"); string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "Insert into TestAssignment (Name,Email,SAssignmentID,SAssignmentName,SAssignmentFile,Date) values (@Name,@Email,@SAssignmentID,@SAssignmentName,@SAssignmentFile,@Date)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlcomm.Parameters.AddWithValue("@Name", txtName.Text);
                sqlcomm.Parameters.AddWithValue("@Email", txtEmail.Text);
                sqlcomm.Parameters.AddWithValue("@SAssignmentID",txtAssignmentID.Text);
                sqlcomm.Parameters.AddWithValue("@SAssignmentName",txtAssignmentName.Text);
                sqlcomm.Parameters.AddWithValue("@SAssignmentFile", filename);
                sqlcomm.Parameters.AddWithValue("@Date", date);
                UploadStatus.Text = "Upload status: file uploaded!";
                sqlconn.Open();
                sqlcomm.ExecuteNonQuery();
                sqlconn.Close();
            }
          catch (Exception ex)
            {
              UploadStatus.Text = "Upload status: The file could not be uploaded. The following error occurs:" + ex.Message;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filelocation = Server.HtmlEncode(((LinkButton)sender).Text);
            string FilePath = Server.MapPath("~/SubmitAssignment/" + filelocation);
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