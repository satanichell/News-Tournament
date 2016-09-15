using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_News_Edit : System.Web.UI.Page
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
            SqlCommand Command = new SqlCommand("DELETE FROM [tbl_News] WHERE [NWS_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["DeleteID"].ToString());

            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/News_Edit.aspx");

            BindGridView();

        }

    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_News] ORDER BY [NWS_ID] DESC", Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "خبری وجود ندارد";
        }

        Connection.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_News] WHERE ([NWS_OnwanKhabar] LIKE N'%" + txtTitr.Text + "%') ORDER BY [NWS_ID]");
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
            lblWarning.Text = "هیچ خبری با این مشخصات یاف نشد";
        }

        Connection.Close();
    }
}