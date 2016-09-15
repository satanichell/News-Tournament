using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Abuot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Blocks] WHERE [Blocks] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID", "A");

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();
        dr.Read();

        lblTitel.Text = dr["Titel"].ToString();
        lblText.Text = dr["Text"].ToString();

        Connection.Close();
    }
}