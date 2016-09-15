using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_News_Edit2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Params["ID"] != null)
            {
                string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;
                SqlConnection Connection = new SqlConnection(CM);
                SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_News] WHERE [NWS_ID] = @ID", Connection);

                Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());

                Connection.Open();

                SqlDataReader dr = Command.ExecuteReader();
                dr.Read();

                txtOnwanKhabar.Text = dr["NWS_OnwanKhabar"].ToString();
                txtKholase.Text = dr["NWS_KholaseKhabar"].ToString();
                ckeMatnKhabar.Text = dr["NWS_MatnKhabar"].ToString();
                lblNamePhotoShow.Text = dr["NWS_Tasvir"].ToString();
                imgPhoto.ImageUrl = "~/UplNewsPhoto/" + dr["NWS_Tasvir"].ToString();

                Connection.Close();
            }
            else
            {
                Response.Redirect("~/Admin/News_Edit.aspx");
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
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
            SqlCommand Command = new SqlCommand("UPDATE [tbl_News] SET [NWS_OnwanKhabar] = @OnwanKhabar ,[NWS_KholaseKhabar] = @Kholase ,[NWS_MatnKhabar] = @MatnKhabar ,[NWS_Tasvir] = @Tasvir ,[NWS_File] = @File  WHERE [NWS_ID] = @ID", Connection);

            Command.Parameters.AddWithValue("@ID", Request.Params["ID"].ToString());
            Command.Parameters.AddWithValue("@OnwanKhabar", txtOnwanKhabar.Text);
            Command.Parameters.AddWithValue("@Kholase", txtKholase.Text);
            Command.Parameters.AddWithValue("@MatnKhabar", ckeMatnKhabar.Text);
            Command.Parameters.AddWithValue("@Tasvir", fn1);
            Command.Parameters.AddWithValue("@File", fn2);

            Connection.Open();

            int b = Command.ExecuteNonQuery();
            if (b == 0)
                lblWarning1.Text = "خبر ویرایش نشد";
            else
                lblWarning2.Text = "خبر ویرایش شد";

            Connection.Close();

            Response.Redirect("~/Admin/News_Edit.aspx");
        }
        else
        {
            lblWarning1.Text = "خبر ثبت نشد";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtOnwanKhabar.Text = "";
        ckeMatnKhabar.Text = "";
        txtKholase.Text = "";

        Response.Redirect("~/Admin/News_Edit.aspx");
    }
}