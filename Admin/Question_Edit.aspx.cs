using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Question_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWarning.Text = "";

        GridView1.DataSource = "";
        GridView1.DataBind();

        if (!IsPostBack)
        {
            FillDDL();
        }

        if (Request.Params["DeleteID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("DELETE FROM [tbl_QuestionMosabeghe] WHERE [QMOS_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["DeleteID"].ToString());

            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/Question_Edit.aspx");

        }

    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        BindGridView(ddlMosabeghe.SelectedValue);
    }

    private void FillDDL()
    {
        if (!IsPostBack)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_DateMosabeghe]", Connection);
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Command);

            DataTable DT = new DataTable();

            DataAdapter.Fill(DT);
            ddlMosabeghe.DataSource = DT;
            ddlMosabeghe.DataBind();
            ddlMosabeghe.DataTextField = "DMOS_Name";
            ddlMosabeghe.DataValueField = "DMOS_ID";
            ddlMosabeghe.DataBind();
            ddlMosabeghe.Items.Insert(0, new ListItem("انتخاب کنید", "0"));
        }
    }

    private void BindGridView(string str)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_QuestionMosabeghe] WHERE [QMOS_DateMOS_ID] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID" , str);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "سوالی وجود ندارد";
        }

        Connection.Close();
    }

    public string ProcessDateMosabeghe(object Value)
    {
        string a = "";

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_DateMosabeghe] WHERE [DMOS_ID] = @ID", Connection);
        Command.Parameters.AddWithValue("@ID", Value.ToString());

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();
        dr.Read();
        a = dr["DMOS_Name"].ToString();

        Connection.Close();

        return a;
    }

    public string ProcessAnswerTrue(object Value)
    {
        string a = "";

        if (Value.ToString() == "1")
        {
            a = "پاسخ اول";
        }

        if (Value.ToString() == "2")
        {
            a = "پاسخ دوم";
        }

        if (Value.ToString() == "3")
        {
            a = "پاسخ سوم";
        }

        if (Value.ToString() == "4")
        {
            a = "پاسخ چهارم";
        }

        return a;
    }
}