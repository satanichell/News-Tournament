using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Blocks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }

        if (Request.Params["IDDEL"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("DELETE FROM [tbl_InfoBlock] WHERE [IB_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["IDDEL"].ToString());

            Connection.Open();

            int a = Command.ExecuteNonQuery();

            if (a == 0)
            {
                Literal1.Text = "" +
"                                    <div class=\"alert alert-danger\">" +
"                                        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>" +
"                                        <strong>خطا!</strong> حذف نشد" +
"                                    </div>";
            }
            else
            {
                Literal1.Text = "" +
"                                    <div class=\"alert alert-success\">" +
"                                        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>" +
"                                        <strong>موفقیت!</strong> حذف شد" +
"                                    </div>";
            }

            Connection.Close();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("INSERT INTO [tbl_InfoBlock] ([IB_TitelBlock],[IB_ShowOrNot]) VALUES (@Titel,@ShowOrNot)", Connection);

        Command.Parameters.AddWithValue("@Titel", txtTitel.Text);
        Command.Parameters.AddWithValue("@ShowOrNot", chkShowOrNot.Checked);

        Connection.Open();

        int a = Command.ExecuteNonQuery();

        if (a == 0)
        {
            Literal1.Text = "" +
"                                    <div class=\"alert alert-danger\">" +
"                                        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>" +
"                                        <strong>خطا!</strong> ثبت نشد" +
"                                    </div>";
        }
        else
        {
            Literal1.Text = "" +
"                                    <div class=\"alert alert-success\">" +
"                                        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>" +
"                                        <strong>موفقیت!</strong> ثبت شد" +
"                                    </div>";
        }

        Connection.Close();
    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_InfoBlock]", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        GridView1.DataSource = DataReader;
        GridView1.DataBind();

        Connection.Close();
    }
}