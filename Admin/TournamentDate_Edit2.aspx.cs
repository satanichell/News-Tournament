using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_TournamentDate_Edit2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Params["ID"] != null)
            {
                string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;
                SqlConnection Connection = new SqlConnection(CM);
                SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_DateMosabeghe] WHERE [DMOS_ID] = @ID", Connection);

                Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

                Connection.Open();

                SqlDataReader dr = Command.ExecuteReader();
                dr.Read();

                txtID.Text = dr["DMOS_ID"].ToString();
                txtName.Text = dr["DMOS_Name"].ToString();
                txtStartDate.Text = dr["DMOS_StartDate"].ToString();
                txtEndDate.Text = dr["DMOS_EndDate"].ToString();

                Connection.Close();
            }
            else
            {
                Response.Redirect("~/Admin/TournamentDate_Edit.aspx");
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("UPDATE [tbl_DateMosabeghe] SET [DMOS_Name] = @Name ,[DMOS_StartDate] = @StartDate ,[DMOS_EndDate] =  @EndDate WHERE [DMOS_ID] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID", txtID.Text);
        Command.Parameters.AddWithValue("@Name", txtName.Text);
        Command.Parameters.AddWithValue("@StartDate", txtStartDate.Text);
        Command.Parameters.AddWithValue("@EndDate", txtEndDate.Text);

        Connection.Open();

        int b = Command.ExecuteNonQuery();
        if (b == 0)
            lblWarning.Text = "زمان مسابقه ویرایش نشد";
        else
            lblWarning.Text = "زمان مسابقه ویرایش شد";

        Connection.Close();

        Response.Redirect("~/Admin/TournamentDate_Edit.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtID.Text = "";
        txtName.Text = "";
        txtStartDate.Text = "";
        txtEndDate.Text = "";
    }
}