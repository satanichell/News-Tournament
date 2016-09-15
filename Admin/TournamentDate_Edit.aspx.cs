using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_TournamentDate_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }

        if (Request.Params["DeleteID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);

            SqlCommand Command = new SqlCommand("DELETE FROM [tbl_DateMosabeghe] WHERE [DMOS_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["DeleteID"].ToString());

            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/TournamentDate_Edit.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_DateMosabeghe] WHERE ([DMOS_Name] LIKE N'%" + txtName.Text + "%') ORDER BY [DMOS_ID]");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_DateMosabeghe] WHERE ([DMOS_StartDate] LIKE N'%" + txtDateStart.Text + "%') ORDER BY [DMOS_ID]");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_DateMosabeghe] WHERE ([DMOS_EndDate] LIKE N'%" + txtDateEnd.Text + "%') ORDER BY [DMOS_ID]");
    }

    private void BindData1(string str)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand(str, Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "هیچ مسابقه ای با این مشخصات یاف نشد";
        }

        Connection.Close();
    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_DateMosabeghe]", Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "زمان مسابقه ای وجود ندارد";
        }

        Connection.Close();
    }
}