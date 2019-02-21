using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Web.ClientServices;

namespace OEMS
{
    public partial class TakeExam : System.Web.UI.Page
    {
        String sub;
        int right_ans = 0;

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
        string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* RadioButton rdList1 = (RadioButton)DataList1.Items[0].FindControl("RadioButton1");
            RadioButton rdList2 = (RadioButton)DataList1.Items[0].FindControl("RadioButton2");
            RadioButton rdList3 = (RadioButton)DataList1.Items[0].FindControl("RadioButton3");
            RadioButton rdList4 = (RadioButton)DataList1.Items[0].FindControl("RadioButton4");
            
            //lbFeedback.Text = rdList1.Text;
            Label Answer = (Label)DataList1.Items[0].FindControl("LabelAnswer");
            lbFeedback.Text = Answer.Text;
            if(rdList2.Text.Equals(Answer.Text))
            {
                lbFeedback.Text = "Corrrrec!";
            }*/
            GridView1.Visible = true;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           /* if(String.Equals(e.CommandName,"Validate"))
            {

                DataListItem rdData2 = (DataListItem)e.Item;
                RadioButton rdBtn1 = (RadioButton)rdData2.FindControl("RadioButton1");
                RadioButton rdBtn2 = (RadioButton)rdData2.FindControl("RadioButton2");
                RadioButton rdBtn3 = (RadioButton)rdData2.FindControl("RadioButton3");
                RadioButton rdBtn4 = (RadioButton)rdData2.FindControl("RadioButton4");
                
            }*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btnRadio = (Button)sender;
            DataListItem dataRadio = (DataListItem)btnRadio.NamingContainer;
            RadioButton rdList1 = (RadioButton)dataRadio.FindControl("RadioButton1");
            RadioButton rdList2 = (RadioButton)dataRadio.FindControl("RadioButton2");
            RadioButton rdList3 = (RadioButton)dataRadio.FindControl("RadioButton3");
            RadioButton rdList4 = (RadioButton)dataRadio.FindControl("RadioButton4");
            //lbFeedback.Text = rdList1.Text;
            Label Answer = (Label)dataRadio.FindControl("LabelAnswer");
            Label Question = (Label)dataRadio.FindControl("QuestionLabel");
            Label QuestionId = (Label)dataRadio.FindControl("LabelQuestionId");
            
            string email = Session["Email"].ToString();
            //lbFeedback.Text = Answer.Text;
            if(rdList1.Checked)
            {
                if (rdList1.Text.Equals(Answer.Text))
                {
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList1.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Correct");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
                else
                {

                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList1.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark","Wrong");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
            }
            else if(rdList2.Checked)
            {
                if (rdList2.Text.Equals(Answer.Text))
                {
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList2.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Correct");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
                else
                {

                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList2.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Wrong");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }

            }
            else if(rdList3.Checked)
            {
                if (rdList3.Text.Equals(Answer.Text))
                {
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList3.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Correct");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
                else
                {

                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList3.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Wrong");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
            }
            else if(rdList4.Checked)
            {
                if (rdList4.Text.Equals(Answer.Text))
                {
                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList4.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Correct");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
                else
                {

                    SqlConnection sqlconn = new SqlConnection(mainconn);
                    string sqlquery = "Insert into dbo.AnswerTable (Email,QuestionId,Question,OptionSelected,Answer,Mark) values (@email,@questionId,@question,@optionSelected,@answer,@mark)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@email", email);
                    sqlcomm.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    sqlcomm.Parameters.AddWithValue("@question", Question.Text);
                    sqlcomm.Parameters.AddWithValue("@optionSelected", rdList4.Text);
                    sqlcomm.Parameters.AddWithValue("@answer", Answer.Text);
                    sqlcomm.Parameters.AddWithValue("@mark", "Wrong");
                    string sqlUpdate = "Update CreatExam set Status=1 where QuestionId=@questionId";

                    SqlCommand sqlcomm1 = new SqlCommand(sqlUpdate, sqlconn);
                    sqlcomm1.Parameters.AddWithValue("@questionId", QuestionId.Text);
                    //Label1.Text = "Registered Successfully!";
                    sqlconn.Open();
                    sqlcomm.ExecuteNonQuery();
                    sqlcomm1.ExecuteNonQuery();
                    sqlconn.Close();
                    lbFeedback.Text = sqlUpdate;
                }
            }

           
            Response.Redirect("~/TakeExam.aspx");
        }
  }  
}

