using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "";

        s += "تعداد کل سوالات " + Request.Params["SQ"].ToString() + " میباشد<br />";
        s += "تعداد جواب های ثبت شده " + Request.Params["SAI"].ToString() + " میابشد<br />";
        s += "کد سوالاتی که ثبت نشده اند عبارت اند از " + Request.Params["SIDQNI"].ToString() + " میباشد";
        Label1.Text = s;
    }
}