using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class logon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_User] WHERE ([USR_User] = @User) and ([USR_Pass] = @Pass) and ([USR_TypeUser] = N'1')", Connection);

        Command.Parameters.AddWithValue("@User", txtUser.Text);
        Command.Parameters.AddWithValue("@Pass", txtPass.Text);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (!dr.HasRows)
        {
            lblError1.Text = "شما به یکی از دلایل زیر نمیتوانید وارد شوید<br />";
            lblError1.Text += "نام کاربری و کلمه عبور اشتباه است<br />";
            lblError1.Text += "شما دسترسی مدریت ندارید<br />";
        }
        else
        {
            dr.Read();

            Session["ID"] = dr["USR_ID"];
            Session["User"] = dr["USR_User"];
            Session["Name"] = dr["USR_Name"];
            Session["Family"] = dr["USR_Family"];
            Session["CodMeli"] = dr["USR_CodMeli"];
            Session["TypeUser"] = dr["USR_TypeUser"];

            Response.Redirect("Admin/Default.aspx");
        }

        Connection.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}