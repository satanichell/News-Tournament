<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <div class="panel <% Response.Write(Session["Theam"]); %>" style="margin-left:-15px; margin-right:-20px;">
                            <div class="panel-heading" align="center">ثبت نام</div>
						    <div class="panel-body" align="center" dir="rtl">
                                <% if(Session["Alert"].ToString() == "true") { %>
                                <div class="alert alert-success">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>موفقیت!</strong> اطلاعات شما ثبت شد بعد از تایید مدیر میتوانید وارد شوید
                                </div>
                                <% } else if(Session["Alert"].ToString() == "false") { %>
                                <div class="alert alert-danger">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>خطا!</strong> اطلاعات شما ثبت نشد لطفا بعدا دوباره سعی کنید
                                </div>
                                <% } %>
                                <br />

                                <p>
                                    <asp:Label ID="lblName" runat="server" Text="نام :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblFamily" runat="server" Text="نام خانوادگی  :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtFamily" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtFamily" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblCodMeli" runat="server" Text="کد ملی :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtCodMeli" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtCodMeli" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblMobil" runat="server" Text="شماره مبایل :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtMobil" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtMobil" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblEmail" runat="server" Text="پست الکترونیکی :"></asp:Label>
                                    &nbsp;
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblUser" runat="server" Text="نام کاربری :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtUser" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <p>
                                    <asp:Label ID="lblPass" runat="server" Text=" :کلمه عبور"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>

                                <br />
                                <br />

                                <p>
                                    
                                    <asp:Button ID="btnRegister" CssClass="btn btn-default" runat="server" Text="ثبت نام" Width="75px" onclick="btnRegister_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" CssClass="btn btn-default" runat="server" Text="انصراف" Width="75px" onclick="btnCancel_Click" />

                                </p>


                            </div>
                        </div>
</asp:Content>

