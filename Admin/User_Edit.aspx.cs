using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_EditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWarning.Text = "";
        lblWarning2.Text = SumUsersAndSumAdmins();

        if (!IsPostBack)
        {
            BindGridView();
        }

        if (Request.Params["DeleteID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("DELETE FROM [tbl_User] WHERE [USR_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["DeleteID"].ToString());

            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();

            Response.Redirect("~/Admin/User_Edit.aspx");

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_Family] LIKE N'%" + txtFamily.Text + "%') ORDER BY [USR_ID]");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_CodMeli] LIKE N'%" + txtCodMeli.Text + "%') ORDER BY [USR_ID]");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_Mobil] LIKE N'%" + txtMobil.Text + "%') ORDER BY [USR_ID]");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = "";
        GridView1.DataBind();

        BindData1("SELECT * FROM [tbl_User] WHERE ([USR_Email] LIKE N'%" + txtEmail.Text + "%') ORDER BY [USR_ID]");
    }

    private void BindData1(string str)
    {
        SqlConnection Connection = new SqlConnection("Data Source=.;Initial Catalog=News-Tournament;Integrated Security=True");

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
            lblWarning.Text = "هیچ کاربری با این مشخصات یاف نشد";
        }

        Connection.Close();
    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_User]", Connection);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblWarning.Text = "کاربری وجود ندارد";
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