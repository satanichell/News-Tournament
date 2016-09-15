using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_LoginToUserPanel : System.Web.UI.Page
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
        foreach (GridViewRow row in GridView1.Rows)
        {

            CheckBox chk = (CheckBox)row.FindControl("CheckBox1");
            Label lbl = (Label)row.FindControl("Label1");

            Boolean SettingValue;

            if (chk.Checked)
            { SettingValue = true;  }
            else
            { SettingValue = false; }

            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("UPDATE [tbl_Setting] SET [Setting_Value] = @SettingValue WHERE [ID] = @ID", Connection);

            Command.Parameters.AddWithValue("@ID", lbl.Text);
            Command.Parameters.AddWithValue("@SettingValue", SettingValue);

            Connection.Open();

            int a = Command.ExecuteNonQuery();

            if (a == 0)
            {
                lblWarning.Text = "تغییرات ذخیره نشد";
            }
            else
            {
                lblWarning.Text = "تغییرات ذخیره شد";
            }

            Connection.Close();

        }

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Default.aspx");
    }

    private void BindGridView()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Setting]", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        GridView1.DataSource = DataReader;
        GridView1.DataBind();

        Connection.Close();
    }

    private string Check(object obj)
    {
        string str = "";

        if (obj.ToString() == "1")
        {
            str = "";
        }

        if (obj.ToString() == "0")
        {
            str = "";
        }

        return str;
    }

}