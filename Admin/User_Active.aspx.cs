using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AcceptUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWarning1.Text = "";
        lblWarning2.Text = "";
        lblWarning3.Text = SumUsersAndSumAdmins();

        if (!IsPostBack)
        {
            BindGridViewActive();
            BindGridViewInActive();
        }

        if (Request.Params["ActiveID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("UPDATE [tbl_User] SET [USR_AcceptUser] = '1' WHERE [USR_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["ActiveID"].ToString());
            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/User_Active.aspx");

            BindGridViewActive();
            BindGridViewInActive();

        }

        if (Request.Params["InActiveID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("UPDATE [tbl_User] SET [USR_AcceptUser] = '0' WHERE [USR_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["InActiveID"].ToString());
            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/User_Active.aspx");

            BindGridViewActive();
            BindGridViewInActive();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        GridView2.DataSource = "";
        GridView2.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_Family] LIKE N'%" + txtFamily.Text + "%') AND ([USR_AcceptUser] = '1') ORDER BY [USR_ID]");
        BindData2("SELECT * FROM [tbl_User] WHERE ([USR_Family] LIKE N'%" + txtFamily.Text + "%') AND ([USR_AcceptUser] = '0') ORDER BY [USR_ID]");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        GridView2.DataSource = "";
        GridView2.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_CodMeli] LIKE N'%" + txtCodMeli.Text + "%') AND ([USR_AcceptUser] = '1') ORDER BY [USR_ID]");
        BindData2("SELECT * FROM [tbl_User] WHERE ([USR_CodMeli] LIKE N'%" + txtCodMeli.Text + "%') AND ([USR_AcceptUser] = '0') ORDER BY [USR_ID]");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        GridView2.DataSource = "";
        GridView2.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_Email] LIKE N'%" + txtEmail.Text + "%') AND ([USR_AcceptUser] = '1') ORDER BY [USR_ID]");
        BindData2("SELECT * FROM [tbl_User] WHERE ([USR_Email] LIKE N'%" + txtEmail.Text + "%') AND ([USR_AcceptUser] = '0') ORDER BY [USR_ID]");
    }

    private void BindGridViewActive()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_User] WHERE [USR_AcceptUser] = 1", Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning1.Text = "کاربر فعالی وجود ندارد";
        }

        Connection.Close();
    }

    private void BindGridViewInActive()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_User] WHERE [USR_AcceptUser] = 0", Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }
        else
        {
            lblWarning2.Text = "کاربر غیر فعالی وجود ندارد";
        }

        Connection.Close();
    }

    private void BindData1(string str)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand(str , Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning1.Text = "هیچ کاربر فعالی با این مشخصات یاف نشد";
        }

        Connection.Close();
    }

    private void BindData2(string str)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand(str, Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }
        else
        {
            lblWarning2.Text = "هیچ کاربر غیر فعالی با این مشخصات یاف نشد";
        }

        Connection.Close();
    }

    private string SumUsersAndSumAdmins()
    {
        int SumAdmins = 0;
        int SumUsers = 0;
        string strReturn = "";

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_User]", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        if (DataReader.HasRows)
        {
            while (DataReader.Read())
            {
                if (DataReader["USR_TypeUser"].ToString() == "1")
                { SumAdmins++; }

                if (DataReader["USR_TypeUser"].ToString() == "0")
                { SumUsers++; }
            }
        }

        Connection.Close();

        strReturn += "تعداد کاربران مدیر " + SumAdmins + " و تعداد کاربران معمولی " + SumUsers + " میباشد.";

        return strReturn;
    }
}