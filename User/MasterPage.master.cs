using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        else
        {
            lblUserID.Text = Session["ID"].ToString();
            lblUser.Text = Session["User"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblFamily.Text = Session["Family"].ToString();
            lblCodMeli.Text = Session["CodMeli"].ToString();

            if(Session["TypeUser"].ToString() == "1")
            {
                lblTypeUser.Text = "مدیر";
            }
            else
            {
                lblTypeUser.Text = "کاربر";
            }
        }
        
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Session["ID"] = null;
        Session["User"] = null;
        Session["Name"] = null;
        Session["Family"] = null;
        Session["CodMeli"] = null;
        Session["TypeUser"] = null;

        Response.Redirect("../Default.aspx");
    }
}
