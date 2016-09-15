using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;

public partial class User_Tournament : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_DateMosabeghe]", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        a(DataReader);

        Connection.Close();
    }

    protected void btnAddRow_Click(object sender, EventArgs e)
    {
        

        foreach (GridViewRow gvr in GridView1.Rows)
        {
            
        }

        
    }

    public DataTable GetTableWithNoData()
    {
        DataTable table = new DataTable();
        table.Columns.Add("DMOS_ID", typeof(string));
        table.Columns.Add("DMOS_Name", typeof(string));
        table.Columns.Add("DMOS_StartDate", typeof(string));
        table.Columns.Add("DMOS_EndDate", typeof(string));
        return table;
    }

    public void a(SqlDataReader DataReader)
    {
        PersianCalendar PC = new PersianCalendar();
        DateTime thisDate = DateTime.Now;

        string ToDay1 = string.Format("{0}{1:D2}{2:D2}", PC.GetYear(thisDate), PC.GetMonth(thisDate), PC.GetDayOfMonth(thisDate));

        DataTable dt1 = GetTableWithNoData();
        DataTable dt2 = GetTableWithNoData();
        DataRow dr1;
        DataRow dr2;

        while (DataReader.Read())
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

            SqlConnection Connection = new SqlConnection(CM);

            SqlCommand Command = new SqlCommand("SELECT DISTINCT [AQ_UserID] FROM [tbl_AnswerQuestion] WHERE ([AQ_UserID] = @User_ID) AND ([AQ_DateMOSID] = @QMOS_DateMOS_ID)", Connection);
            Command.Parameters.AddWithValue("@QMOS_DateMOS_ID", DataReader["DMOS_ID"].ToString());
            Command.Parameters.AddWithValue("@User_ID", Session["ID"].ToString());

            string Start = DataReader["DMOS_StartDate"].ToString();
            string End = DataReader["DMOS_EndDate"].ToString();

            string[] a = Start.Split('/');
            string[] b = End.Split('/');


            string StartDate1 = string.Format("{0}{1:D2}{2:D2}", a[0], a[1], a[2]); ;
            string EndDate1 = string.Format("{0}{1:D2}{2:D2}", b[0], b[1], b[2]); ;

            int ToDay2 = Convert.ToInt32(ToDay1);
            int StartDate2 = Convert.ToInt32(StartDate1);
            int EndDate2 = Convert.ToInt32(EndDate1);

            if ((ToDay2 >= StartDate2) && (ToDay2 <= EndDate2))
            {
                Connection.Open();

                SqlDataReader DataR = Command.ExecuteReader();

                if (!DataR.HasRows)
                {
                    dr1 = dt1.NewRow();

                    dr1[0] = DataReader["DMOS_ID"].ToString();
                    dr1[1] = DataReader["DMOS_Name"].ToString();
                    dr1[2] = DataReader["DMOS_StartDate"].ToString();
                    dr1[3] = DataReader["DMOS_EndDate"].ToString();

                    dt1.Rows.Add(dr1);
                }
                else
                {
                    dr2 = dt2.NewRow();

                    dr2[0] = DataReader["DMOS_ID"].ToString();
                    dr2[1] = DataReader["DMOS_Name"].ToString();
                    dr2[2] = DataReader["DMOS_StartDate"].ToString();
                    dr2[3] = DataReader["DMOS_EndDate"].ToString();

                    dt2.Rows.Add(dr2);
                }

                Connection.Close();
            }
        }

        if (dt1.Rows.Count > 0)
        {
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }
        else
        {
            lblWarning1.Text = "شما به یکی از دلایل زیر لیست مسابقات را نمی بینید<br />";
            lblWarning1.Text += "در حال حاضر مسابقه ای وجود ندارد<br />";
            lblWarning1.Text += "همه مسابقات موجود را شرکت کرده اید<br />";
        }
        if (dt2.Rows.Count > 0)
        {
            GridView2.DataSource = dt2;
            GridView2.DataBind();
        }
        else
        {
            lblWarning2.Text = "شما به یکی از دلایل زیر لیست ویرایش جواب های مسابقات را نمی بینید<br />";
            lblWarning2.Text += "مسابقاتی که شما شرکت کرده اید به پایان رسیده<br />";
            lblWarning2.Text += "هنوز در مسابقه ای شرکت نکرده اید<br />";
        }
    }
}