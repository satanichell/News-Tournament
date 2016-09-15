using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Shobehat_Answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Shobehat]", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        GridView1.DataSource = DataReader;
        GridView1.DataBind();

        Connection.Close();
    }
}