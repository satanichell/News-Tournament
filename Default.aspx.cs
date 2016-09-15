using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Session["Theam"] == null)
        {
            Session["Theam"] = "panel-default";
        }

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_News] ORDER BY [NWS_ID] DESC", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        if (DataReader.HasRows)
        {
            News(DataReader);
        }
        else
        {
            lblWarning.Text = "خبری وجود ندارد";
        }

        Connection.Close();
    }

    private void News(SqlDataReader dr)
    {
        string str = "";
        while (dr.Read())
        {
            str += "" +
"\n                                    <div class=\"panel " + Session["Theam"].ToString() + "\" style=\"margin-left:-15px; margin-right:-20px;\" dir=\"rtl\">" +
"\n                                        <div class=\"panel-heading\" align=\"right\">" +
"\n                                            <a style=\"font-size:large;\" href=\"Details.aspx?ID=" + dr["NWS_ID"] + "\">" + dr["NWS_OnwanKhabar"] + "</a>" +
"\n                                        </div>" +
"\n                                        <div class=\"panel-body\" align=\"right\">" +
"\n                                            <img Width=\"120\" Height=\"120\" src=\"UplNewsPhoto/" + dr["NWS_Tasvir"] + "\" />" +
"\n                                            <div class=\"col-md-9\" align=\"right\">" +
"\n                                               " + dr["NWS_KholaseKhabar"] + "" +
"\n                                            </div>" +
"\n                                        </div>" +
"\n                                    </div>";
        }
        spanNews.InnerHtml = str;
    }
}