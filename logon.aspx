<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logon.aspx.cs" Inherits="logon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>ورود اختصاصی مدیر</title>

    <script src="bootstrap/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body dir="rtl">
    <form id="form1" runat="server">

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <div class="container">

            <div class="col-md-3"></div>

            <div class="col-md-6" align="center">
                    
                <div class="panel panel-default">
					<div class="panel-heading">
                        <asp:Label ID="Label6" runat="server" Text="ورود کاربر"></asp:Label>
                    </div>
                	<div class="panel-body" align="center">
                        <br />

                        <asp:Label ID="Label5" runat="server" Text="نام کاربری :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>

                        <br />
                        <br />

                        <asp:Label ID="lblPass" runat="server" Text="کلمه عبور :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>

                        <br />
                        <br />

                        <asp:Label ID="lblError1" runat="server" ForeColor="#FF3300"></asp:Label>

                        <br />
                        <br />

                        <p>
                            <asp:Button ID="btnLogin" runat="server" Text="ورود" Width="75px" onclick="btnLogin_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" onclick="btnCancel_Click" />
                        </p>
                        <br />
                        <br />

                    </div>
				</div>

            </div>

            <div class="col-md-3"></div>

        </div>
    </form>
</body>
</html>
