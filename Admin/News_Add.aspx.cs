using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_News_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        bool hasErrors = false;

        //---------------------------[ Upload Photo ]-----------------------------
        string fn1 = fupPhoto.FileName;
        string pasvand = System.IO.Path.GetExtension(fn1).ToLower();
        int hajm = fupPhoto.PostedFile.ContentLength;

        if (fupPhoto.HasFile)
            if (pasvand == ".jpg")
            {
                fupPhoto.SaveAs(Server.MapPath("~/UplNewsPhoto/") + fn1);
                lblWarning2.Text = "فایل با موفقیت آپلود شد";
            }
            else
            {
                lblWarning2.Text = "پسوند فایل مورد نظر باید jpg باشد";
                hasErrors = true;
            }
        else
        {
            fn1 = "Default.jpg";
        }

        //---------------------------[ Upload File ]-----------------------------
        string fn2 = "";

        if (fupFile.HasFile)
        {
            fn2 = fupFile.FileName;
            fupFile.SaveAs(Server.MapPath("~/UplNewsFile/") + fn2);
            lblWarning2.Text = "فایل با موفقیت آپلود شد";
        }

        
        //---------------------------[ Add News ]-----------------------------
        if (hasErrors == false)
        {
            string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
            SqlConnection Connection = new SqlConnection(CM);
            SqlCommand Command = new SqlCommand("INSERT INTO [tbl_News] ([NWS_OnwanKhabar],[NWS_KholaseKhabar],[NWS_MatnKhabar],[NWS_Tasvir],[NWS_File]) VALUES (@OnwanKhabar,@Kholase,@MatnKhabar,@Tasvir,@File)", Connection);

            Command.Parameters.AddWithValue("@OnwanKhabar", txtOnwanKhabar.Text);
            Command.Parameters.AddWithValue("@Kholase", txtKholase.Text);
            Command.Parameters.AddWithValue("@MatnKhabar", ckeMatnKhabar.Text);
            Command.Parameters.AddWithValue("@Tasvir", fn1);
            Command.Parameters.AddWithValue("@File", fn2);

            Connection.Open();

            int b = Command.ExecuteNonQuery();

            if (b == 0)
                lblWarning1.Text = "خبر ثبت نشد";
            else
                lblWarning1.Text = "خبر ثبت شد";

            Connection.Close();
        }
        else
        {
            lblWarning1.Text = "خبر ثبت نشد";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtOnwanKhabar.Text = "";
        txtKholase.Text = "";
        ckeMatnKhabar.Text = "";
    }
}