using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Question_Add_True_Answers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWarning.Text = "";

        btnAdd.Visible = false;

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
            ddlDateMos.Items.Insert(0, new ListItem("انتخاب کنید", "0"));
        }
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT [QMOS_ID],[QMOS_QuestionNo],[QMOS_AnswerTrue] FROM [tbl_QuestionMosabeghe] WHERE [QMOS_DateMOS_ID] = @QMOS_DateMOS_ID ORDER BY [QMOS_ID] ASC", Connection);
        Command.Parameters.AddWithValue("@QMOS_DateMOS_ID", ddlDateMos.SelectedValue);

        Connection.Open();//[QMOS_AnswerTrue]

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "در این مسابقه کاربری شرکت نکرده است";
        }

        Connection.Close();

        SelectedValueDropDownList();

        btnAdd.Visible = true;

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);

        Connection.Open();

        int SumQuestion = 0;
        int SumUpdateQuestion = 0;
        int SumNotUpdateQuestion = 0;

        foreach (GridViewRow Row in GridView1.Rows) // Sum Question
        {
            SumQuestion++;
        }

        foreach (GridViewRow Row in GridView1.Rows) // Update Question
        {
            Label LBL = (Label)Row.FindControl("lblID");
            RadioButtonList RBL = (RadioButtonList)Row.FindControl("rblTrueAnswer");

            SqlCommand Command = new SqlCommand("UPDATE [tbl_QuestionMosabeghe] SET [QMOS_AnswerTrue] = @AnswerTrue WHERE [QMOS_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", LBL.Text);
            Command.Parameters.AddWithValue("@AnswerTrue", RBL.SelectedValue);

            int Execute = Command.ExecuteNonQuery();

            if (Execute == 1)
            {
                SumUpdateQuestion++;
            }
            else
            {
                SumNotUpdateQuestion++;
            }

        }

        Connection.Close();
        lblWarning.Text = "";
        lblWarning.Text += "تعداد کل سوالات: " + SumQuestion + "<br />";
        lblWarning.Text += "تعداد سوالات ویرایش شده: " + SumUpdateQuestion + "<br />";
        lblWarning.Text += "تعداد سوالات ویرایش نشده: " + SumNotUpdateQuestion + "<br />";
    }

    private void SelectedValueDropDownList()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT [QMOS_AnswerTrue] FROM [tbl_QuestionMosabeghe] WHERE [QMOS_DateMOS_ID] = @QMOS_DateMOS_ID ORDER BY [QMOS_ID] ASC", Connection);
        Command.Parameters.AddWithValue("@QMOS_DateMOS_ID", ddlDateMos.SelectedValue);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        foreach (GridViewRow Row in GridView1.Rows)
        {
            DataReader.Read();

            RadioButtonList RBL = (RadioButtonList)Row.FindControl("rblTrueAnswer");

            if (DataReader["QMOS_AnswerTrue"].ToString() != "0")
           {
                RBL.SelectedValue = DataReader["QMOS_AnswerTrue"].ToString();
           }
        }

        Connection.Close();

    }
}