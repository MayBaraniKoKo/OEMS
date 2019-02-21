using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.ClientServices;

namespace OEMS
{
    public partial class LectureViewAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
         protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

         protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
         {

         }

         protected void LinkButton1_Click(object sender, EventArgs e)
         {
             string filelocation = Server.HtmlEncode(((LinkButton)sender).Text);
             string FilePath = Server.MapPath("~/Uploadform/" + filelocation);
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
