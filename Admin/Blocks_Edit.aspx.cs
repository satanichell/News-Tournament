using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Blocks_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack || Session["Alert"] != "")
        {
            Session["Alert"] = "";
        }

        if (!IsPostBack)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_InfoBlock] WHERE [IB_ID] = @ID", Connection);
            Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

            Connection.Open();

            SqlDataReader DataReader = Command.ExecuteReader();

            DataReader.Read();

            txtID.Text = DataReader["IB_ID"].ToString();
            txtTitel.Text = DataReader["IB_TitelBlock"].ToString();

            if (DataReader["IB_ShowOrNot"].ToString() == "True")
            {
                chkShowOrNot.Checked = true;
            }
            else if (DataReader["IB_ShowOrNot"].ToString() == "False")
            {
                chkShowOrNot.Checked = false;
            }

            Connection.Close();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("UPDATE [tbl_InfoBlock] SET [IB_TitelBlock] = @Titel ,[IB_ShowOrNot] = @ShowOrNot WHERE [IB_ID] = @ID", Connection);
        Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());
        Command.Parameters.AddWithValue("@Titel", txtTitel.Text);
        Command.Parameters.AddWithValue("@ShowOrNot", chkShowOrNot.Checked);

        Connection.Open();

        int a = Command.ExecuteNonQuery();

        if (a == 0)
        {
            Session["Alert"] = "false";
        }
        else
        {
            Session["Alert"] = "true";
        }

        Connection.Close();
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Blocks.aspx");
    }
}