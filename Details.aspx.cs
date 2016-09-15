using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["ID"] != null)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_News] WHERE [NWS_ID] = @ID", Connection);

            Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

            Connection.Open();

            SqlDataReader DataReader = Command.ExecuteReader();
            DataReader.Read();

            lblTiter.Text = DataReader["NWS_OnwanKhabar"].ToString();

            imgPic.ImageUrl = "~/UplNewsPhoto/" + DataReader["NWS_Tasvir"].ToString();

            lblKholase.Text = DataReader["NWS_KholaseKhabar"].ToString();

            divText.InnerHtml = DataReader["NWS_MatnKhabar"].ToString();

            if (DataReader["NWS_File"].ToString() != "" || DataReader["NWS_File"].ToString() != null)
            {
                Label Titel = new Label();
                HyperLink hlFile = new HyperLink();

                Titel.Text = "فایل پیوست شده: ";
                Titel.Font.Bold = true;
                Titel.Font.Size = 18;

                hlFile.Text = DataReader["NWS_File"].ToString();
                hlFile.Font.Bold = true;
                hlFile.Font.Size = 18;
                hlFile.NavigateUrl = "~/UplNewsFile/" + DataReader["NWS_File"].ToString();

                PlaceHolder1.Controls.Add(Titel);
                PlaceHolder1.Controls.Add(hlFile);
            }

            Connection.Close();
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}