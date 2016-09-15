using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class User_InfoMember_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);

            SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_User] WHERE [USR_ID] = @ID", Connection);

            Command.Parameters.AddWithValue("@ID", Session["ID"].ToString());

            Connection.Open();

            SqlDataReader dr = Command.ExecuteReader();

            dr.Read();

            txtName.Text = dr["USR_Name"].ToString();
            txtFamily.Text = dr["USR_Family"].ToString();
            txtCodMeli.Text = dr["USR_CodMeli"].ToString();
            txtMobil.Text = dr["USR_Mobil"].ToString();
            txtEmail.Text = dr["USR_Email"].ToString();
            txtUser.Text = dr["USR_User"].ToString();
            txtPass.Text = dr["USR_Pass"].ToString();

            Connection.Close();
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("UPDATE [tbl_User] SET [USR_Name]=@Name ,[USR_Family]=@Family ,[USR_CodMeli]=@CodMeli ,[USR_Mobil] = @Mobil ,[USR_Email] = @Email ,[USR_User]=@User ,[USR_Pass]=@Pass WHERE [USR_ID]=@ID ", Connection);

        Command.Parameters.AddWithValue("@ID", Session["ID"].ToString());
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
            lblWarning.Text = "رکورد ویرایش نشد";
        else
            lblWarning.Text = "رکورد ویرایش شد";

        Connection.Close();

        Session["Name"] = txtName.Text;
        Session["Family"] = txtFamily.Text;
        Session["CodMeli"] = txtCodMeli.Text;

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Default.aspx");
    }
}