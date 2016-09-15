using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Show_Answer_Shobahat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ID = Request.Params["ID"].ToString();

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Shobehat] WHERE [SHOB_ID] = @ID", Connection);
        Command.Parameters.AddWithValue("@ID", ID);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        Label Soal = new Label();
        Label HR = new Label();
        Label Pasokh = new Label();

        Soal.Font.Size = 18;
        Soal.Font.Bold = true;

        Pasokh.Font.Size = 14;

        DataReader.Read();

        Soal.Text = DataReader["SHOB_Soal"].ToString();
        HR.Text = "<hr>";
        Pasokh.Text = DataReader["SHOB_Pasokh"].ToString();

        PlaceHolder1.Controls.Add(Soal);
        PlaceHolder1.Controls.Add(HR);
        PlaceHolder1.Controls.Add(Pasokh);

        Connection.Close();

    }
}