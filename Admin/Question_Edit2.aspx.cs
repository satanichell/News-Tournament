using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Question_Edit2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDLDateMos();

            if (Request.Params["ID"] != null)
            {
                BindGridView(Request.Params["ID"].ToString());
            }
            else
            {
                Response.Redirect("~/Admin/Question_Edit.aspx");
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        if (ddlDateMos.SelectedValue != "0")
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("UPDATE [tbl_QuestionMosabeghe] SET [QMOS_DateMOS_ID] = @DateMos ,[QMOS_QuestionNo] = @QuestionNo ,[QMOS_Question] = @Question ,[QMOS_Answer1] = @Answer1 ,[QMOS_Answer2] = @Answer2 ,[QMOS_Answer3] = @Answer3 ,[QMOS_Answer4] = @Answer4 ,[QMOS_Score] = @Score WHERE [QMOS_ID] = @ID", Connection);

            Command.Parameters.AddWithValue("@ID", txtID.Text);
            Command.Parameters.AddWithValue("@DateMos", ddlDateMos.SelectedValue);
            Command.Parameters.AddWithValue("@QuestionNo", txtQuestionNo.Text);
            Command.Parameters.AddWithValue("@Question", txtQuestion.Text);
            Command.Parameters.AddWithValue("@Answer1", txtAnswer1.Text);
            Command.Parameters.AddWithValue("@Answer2", txtAnswer2.Text);
            Command.Parameters.AddWithValue("@Answer3", txtAnswer3.Text);
            Command.Parameters.AddWithValue("@Answer4", txtAnswer4.Text);
            Command.Parameters.AddWithValue("@Score", txtScore.Text);

            Connection.Open();
            int b = Command.ExecuteNonQuery();
            if (b == 0)
                lblWarning.Text = "سوال ویرایش نشد";
            else
                lblWarning.Text = "سوال ویرایش شد";

            Connection.Close();

            Response.Redirect("~/Admin/Question_Edit.aspx");
        }
        else
        {
            lblWarning.Text = "نام مسابقه را انتخاب کنید";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ddlDateMos.SelectedValue = "0";
        txtQuestionNo.Text = "";
        txtQuestion.Text = "";
        txtAnswer1.Text = "";
        txtAnswer2.Text = "";
        txtAnswer3.Text = "";
        txtAnswer4.Text = "";
        txtScore.Text = "";

        Response.Redirect("~/Admin/Question_Edit.aspx");
    }

    private void DDLDateMos()
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
        ddlDateMos.Items.Insert(0, new ListItem("انتخاب کنید", "0"));
    }

    private void BindGridView(string Value)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_QuestionMosabeghe] WHERE [QMOS_ID] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID", Value);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();
        dr.Read();

        txtID.Text = dr["QMOS_ID"].ToString();
        ddlDateMos.SelectedValue = dr["QMOS_DateMOS_ID"].ToString();
        txtQuestionNo.Text = dr["QMOS_QuestionNo"].ToString();
        txtQuestion.Text = dr["QMOS_Question"].ToString();
        txtAnswer1.Text = dr["QMOS_Answer1"].ToString();
        txtAnswer2.Text = dr["QMOS_Answer2"].ToString();
        txtAnswer3.Text = dr["QMOS_Answer3"].ToString();
        txtAnswer4.Text = dr["QMOS_Answer4"].ToString();
        txtScore.Text = dr["QMOS_Score"].ToString();

        Connection.Close();
    }
}