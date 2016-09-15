using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Blocks_About_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();

        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("UPDATE [tbl_Blocks] SET [Titel] = @Titel ,[Text] = @Text WHERE [ID] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID", txtID.Text);
        Command.Parameters.AddWithValue("@Titel", txtTitel.Text);
        Command.Parameters.AddWithValue("@Text", CKEditor1.Text);

        Connection.Open();

        int b = Command.ExecuteNonQuery();
        if (b == 0)
            lblWarning.Text = "اطلاعات صفحه درباره ما ویرایش نشد";
        else
            lblWarning.Text = "اطلاعات صفحه درباره ما ویرایش شد";

        Connection.Close();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtTitel.Text = "";
        CKEditor1.Text = "";

        Response.Redirect("~/Admin/Default.aspx");
    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Blocks] WHERE [Blocks] = @Blocks", Connection);

        Command.Parameters.AddWithValue("@Blocks", "A");

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();
        dr.Read();

        txtID.Text = dr["ID"].ToString();
        txtTitel.Text = dr["Titel"].ToString();
        CKEditor1.Text = dr["Text"].ToString();

        Connection.Close();
    }
}