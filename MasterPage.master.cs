using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError1.Text = "";
        lblError2.Text = "";
        lblError3.Text = "";

        Session["BlockLogin"] = ReturnLoginUserOrNot();

        Block2();

        if (!IsPostBack && Session["Theam"] == null)
        {
            Session["Theam"] = "panel-default";
        }

        if (Request.Params["ID"] == "Danger")
        {
            Session["Theam"] = "panel-danger";
            Response.Redirect(".");
        }
        else if (Request.Params["ID"] == "Primary")
        {
            Session["Theam"] = "panel-primary";
            Response.Redirect(".");
        }
        else if (Request.Params["ID"] == "Info")
        {
            Session["Theam"] = "panel-info";
            Response.Redirect(".");
        }
        else if (Request.Params["ID"] == "Warning")
        {
            Session["Theam"] = "panel-warning";
            Response.Redirect(".");
        }
        else if (Request.Params["ID"] == "Success")
        {
            Session["Theam"] = "panel-success";
            Response.Redirect(".");
        }

        if (Session["ID"] != null)
        {
            lblUser.Text = Session["User"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblFamily.Text = Session["Family"].ToString();

            if (Session["TypeUser"].ToString() == "1")
            {
                lblTypeUser.Text = "مدیر";
            }
            else
            {
                lblTypeUser.Text = "کاربر";
            }

            if (Session["TypeUser"].ToString() == "1")
            {
                Panel.NavigateUrl = "~/Admin/Default.aspx";
                Panel.Text = "پنل مدریت";
            }
            else
            {
                Panel.NavigateUrl = "~/User/Default.aspx";
                Panel.Text = "پنل کاربر";
            }

        }
    }

    private void Block2()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ToString();
        SqlConnection Connection = new SqlConnection(CM);
        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Blocks] WHERE [Blocks] = @ID", Connection);

        Command.Parameters.AddWithValue("@ID", "B2");

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();
        dr.Read();

        lblTitelB2.Text = dr["Titel"].ToString();
        lblTextlB2.Text = dr["Text"].ToString();

        Connection.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["ID"] = null;
        Session["User"] = null;
        Session["Name"] = null;
        Session["Family"] = null;
        Session["CodMeli"] = null;
        Session["TypeUser"] = null;

        Response.Redirect("~/Default.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM  [tbl_User] WHERE [USR_User]=@User and [USR_Pass]=@Pass", Connection);

        Command.Parameters.AddWithValue("@User", txtUser.Text);
        Command.Parameters.AddWithValue("@Pass", txtPass.Text);

        Connection.Open();

        SqlDataReader dr = Command.ExecuteReader();

        if (!dr.HasRows)
        {
            lblError1.Text = "نام کاربری و کلمه عبور اشتباه است";
        }
        else
        {
            dr.Read();

            if (dr["USR_AcceptUser"].ToString() == "0")
            {
                lblError2.Text = "نام کاربری شما توسط مدیر تایید نشده";
            }
            else
            {
                if (dr["USR_TypeUser"].ToString() == "1")
                {
                    Session["ID"] = dr["USR_ID"];
                    Session["User"] = dr["USR_User"];
                    Session["Name"] = dr["USR_Name"];
                    Session["Family"] = dr["USR_Family"];
                    Session["CodMeli"] = dr["USR_CodMeli"];
                    Session["TypeUser"] = dr["USR_TypeUser"];

                    Response.Redirect("Admin/Default.aspx");
                }
                else
                {
                    Session["ID"] = dr["USR_ID"];
                    Session["User"] = dr["USR_User"];
                    Session["Name"] = dr["USR_Name"];
                    Session["Family"] = dr["USR_Family"];
                    Session["CodMeli"] = dr["USR_CodMeli"];
                    Session["TypeUser"] = dr["USR_TypeUser"];

                    Response.Redirect("User/Default.aspx");
                }
            }
        }

        Connection.Close();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUser.Text = "";
        txtPass.Text = "";
    }

    public string ReturnLoginUserOrNot()
    {
        string CM = ConfigurationManager.ConnectionStrings["CSN_T"].ConnectionString;

        SqlConnection Connection = new SqlConnection(CM);

        SqlCommand Command = new SqlCommand("SELECT * FROM [tbl_Setting] WHERE [Setting_Titel] = N'تنظیم ورود کاربر'", Connection);

        Connection.Open();

        SqlDataReader DataReader = Command.ExecuteReader();

        DataReader.Read();

        string LoginUserOrNot = DataReader["Setting_Value"].ToString();

        Connection.Close();

        return LoginUserOrNot;
    }
    
}
