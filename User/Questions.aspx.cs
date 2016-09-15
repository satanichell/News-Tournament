using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class User_Questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        QuestionsAndAnswer();
    }

    private void QuestionsAndAnswer()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_QuestionMosabeghe] WHERE [QMOS_DateMOS_ID] = @ID ORDER BY [QMOS_QuestionNo] ASC", Connection);
        Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        RadioButtonList rblGroup = new RadioButtonList();

        Label lblID;
        Label lblQuestion;
        Label lblHr;

        string strID = string.Empty;
        string strName = string.Empty;

        while (DataReader.Read())
        {
            strID = DataReader["QMOS_QuestionNo"].ToString() + ". ";
            strName = DataReader["QMOS_Question"].ToString();

            rblGroup = new RadioButtonList();
            rblGroup.ID = "rbl" + DataReader["QMOS_ID"].ToString();

            lblID = new Label();
            lblQuestion = new Label();
            lblHr = new Label();

            lblID.Text = strID;
            lblQuestion.Text = strName;
            lblHr.Text = "<hr>";

            ListItem lblItem1 = new ListItem(DataReader["QMOS_Answer1"].ToString(), "1");
            rblGroup.Items.Add(lblItem1);

            ListItem lblItem2 = new ListItem(DataReader["QMOS_Answer2"].ToString(), "2");
            rblGroup.Items.Add(lblItem2);

            ListItem lblItem3 = new ListItem(DataReader["QMOS_Answer3"].ToString(), "3");
            rblGroup.Items.Add(lblItem3);

            ListItem lblItem4 = new ListItem(DataReader["QMOS_Answer4"].ToString(), "4");
            rblGroup.Items.Add(lblItem4);

            PlaceHolder1.Controls.Add(lblID);
            PlaceHolder1.Controls.Add(lblQuestion);
            PlaceHolder1.Controls.Add(rblGroup);
            PlaceHolder1.Controls.Add(lblHr);
        }

        Connection.Close();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_QuestionMosabeghe] WHERE [QMOS_DateMOS_ID] = @ID ORDER BY [QMOS_QuestionNo] ASC", Connection);
        Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        Dictionary<string, string> arr = new Dictionary<string, string>();
        RadioButtonList rbl;

        while (DataReader.Read())
        {
            string ID = DataReader["QMOS_ID"].ToString();
            string s = "rbl" + ID;

            rbl = (RadioButtonList)Master.FindControl("ContentPlaceHolder1").FindControl("PlaceHolder1").FindControl(s);

            if (rbl.SelectedValue != "")
            {
                arr[ID] = rbl.SelectedValue;
            }
            else
            {
                arr[ID] = "0";
            }
        }

        SetUserAnswerInDB(arr);

        Connection.Close();
    }

    private void SetUserAnswerInDB(Dictionary<string, string> Array1)
    {
        int SumQuestion = 0;
        foreach (var pair in Array1)
        {
            SumQuestion++;
        }

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        string UserID = Session["ID"].ToString();
        string MosID = Request.Params["ID"].ToString();
        int SumAnswerInsert = 0;
        string SumIDQuestionNotInsert = "هیچ";

        foreach (var pair in Array1)
        {
            var QuestionID = pair.Key;
            var UserAnswer = pair.Value;

            SqlCommand Command = new SqlCommand("INSERT INTO [tbl_AnswerQuestion] ([AQ_UserID],[AQ_DateMOSID],[AQ_QuestionID],[AQ_UserAnswer]) VALUES (@UserID, @MosID, @QuestionID, @UserAnswer)", Connection);
            Command.Parameters.AddWithValue("@UserID", UserID);
            Command.Parameters.AddWithValue("@MosID", MosID);
            Command.Parameters.AddWithValue("@QuestionID", QuestionID);
            Command.Parameters.AddWithValue("@UserAnswer", UserAnswer);

            Connection.Open();
            int a = Command.ExecuteNonQuery();
            if (a == 1)
            {
                SumAnswerInsert++;
            }
            else
            {
                SumIDQuestionNotInsert += "[" + QuestionID + "] - ";
            }
            Connection.Close();

        }

        Response.Redirect("~/User/Result.aspx?SQ=" + SumQuestion + "&SAI=" + SumAnswerInsert + "&SIDQNI=" + SumIDQuestionNotInsert + "");

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}