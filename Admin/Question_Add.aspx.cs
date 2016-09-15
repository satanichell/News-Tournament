using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Question_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_DateMosabeghe]", Connection);
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Command);

            DataTable DT = new DataTable();

            DataAdapter.Fill(DT);
            ddlDateMos.DataSource = DT;
            ddlDateMos.DataBind();
            ddlDateMos.DataTextField = "DMOS_Name";
            ddlDateMos.DataValueField = "DMOS_ID";
            ddlDateMos.DataBind();
            ddlDateMos.Items.Insert(0, new ListItem("انتخاب کنید" , "0"));
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlDateMos.SelectedValue != "0")
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("INSERT INTO [tbl_QuestionMosabeghe] ([QMOS_DateMOS_ID],[QMOS_QuestionNo],[QMOS_Question],[QMOS_Answer1],[QMOS_Answer2],[QMOS_Answer3],[QMOS_Answer4],[QMOS_AnswerTrue],[QMOS_Score]) VALUES (@DateMos, @QuestionNo, @Question, @Answer1, @Answer2, @Answer3, @Answer4, @AnswerTrue, @Score)", Connection);

            Command.Parameters.AddWithValue("@DateMos", ddlDateMos.SelectedValue);
            Command.Parameters.AddWithValue("@QuestionNo", txtQuestionNo.Text);
            Command.Parameters.AddWithValue("@Question", txtQuestion.Text);
            Command.Parameters.AddWithValue("@Answer1", txtAnswer1.Text);
            Command.Parameters.AddWithValue("@Answer2", txtAnswer2.Text);
            Command.Parameters.AddWithValue("@Answer3", txtAnswer3.Text);
            Command.Parameters.AddWithValue("@Answer4", txtAnswer4.Text);
            Command.Parameters.AddWithValue("@AnswerTrue", ddlAnswerTrue.SelectedValue);
            Command.Parameters.AddWithValue("@Score", txtScore.Text);

            Connection.Open();
            int b = Command.ExecuteNonQuery();
            if (b == 0)
                lblWarning.Text = "سوال ثبت نشد";
            else
                lblWarning.Text = "سوال ثبت شد";

            Connection.Close();
        }
        else
        {
            lblWarning.Text = "نام مسابقه را انتخاب کنید";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ddlDateMos.SelectedValue = "0";
        txtQuestion.Text = "";
        txtAnswer1.Text = "";
        txtAnswer2.Text = "";
        txtAnswer3.Text = "";
        txtAnswer4.Text = "";
        ddlAnswerTrue.SelectedValue = "0";
        txtScore.Text = "";
    }
}