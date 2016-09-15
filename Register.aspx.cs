using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Alert"] = "";
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("INSERT INTO [tbl_User] ([USR_Name],[USR_Family],[USR_CodMeli],[USR_Mobil],[USR_Email],[USR_User],[USR_Pass],[USR_TypeUser],[USR_AcceptUser]) VALUES (@Name,@Family,@CodMeli,@Mobil,@Email,@User,@Pass,'0','0')", Connection);

        Command.Parameters.AddWithValue("@Name", txtName.Text);
        Command.Parameters.AddWithValue("@Family", txtFamily.Text);
        Command.Parameters.AddWithValue("@CodMeli", txtCodMeli.Text);
        Command.Parameters.AddWithValue("@Mobil", txtMobil.Text);
        Command.Parameters.AddWithValue("@Email", txtEmail.Text);
        Command.Parameters.AddWithValue("@User", txtUser.Text);
        Command.Parameters.AddWithValue("@Pass", txtPass.Text);

        Connection.Open();
        int b = Command.ExecuteNonQuery();
        if (b == 0)
            Session["Alert"] = "false";
        else
            Session["Alert"] = "true";

        Connection.Close();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtFamily.Text = "";
        txtCodMeli.Text = "";
        txtUser.Text = "";
        txtPass.Text = "";
    }
}