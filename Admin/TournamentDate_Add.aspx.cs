using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_TournamentDate_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("INSERT INTO [tbl_DateMosabeghe] ([DMOS_Name],[DMOS_StartDate],[DMOS_EndDate]) VALUES (@Name,@StartDate,@EndDate)", Connection);

        Command.Parameters.AddWithValue("@Name", txtName.Text);
        Command.Parameters.AddWithValue("@StartDate", txtStartDate.Text);
        Command.Parameters.AddWithValue("@EndDate", txtEndDate.Text);

        Connection.Open();
        int b = Command.ExecuteNonQuery();
        if (b == 0)
            lblWarning.Text = "زمان مسابقه ثبت نشد";
        else
            lblWarning.Text = "زمان مسابقه ثبت شد";

        Connection.Close();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtStartDate.Text = "";
        txtEndDate.Text = "";
    }
}