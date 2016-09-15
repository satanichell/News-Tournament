using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Wins : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWarning.Text = "";

        GridView1.DataSource = "";
        GridView1.DataBind();

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
        SqlCommand Command = new SqlCommand("SELECT DISTINCT [AQ_UserID],[USR_ID],[USR_Name],[USR_Family],[USR_CodMeli],[USR_Mobil],[USR_Email],[USR_User],[USR_Pass],[USR_TypeUser],[USR_AcceptUser] FROM [tbl_User] INNER JOIN [tbl_AnswerQuestion] ON [tbl_User].[USR_ID] = [tbl_AnswerQuestion].[AQ_UserID] WHERE [AQ_DateMOSID] = @QMOS_DateMOS_ID", Connection);
        Command.Parameters.AddWithValue("@QMOS_DateMOS_ID", ddlDateMos.SelectedValue);

        Connection.Open();

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
    }
}