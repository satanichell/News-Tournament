<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="User_Edit2.aspx.cs" Inherits="Admin_EditMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویراش اطلاعات کاربر</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblUserID" runat="server" Text="کد کاربری :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtUserID" runat="server" Enabled="False" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblName" runat="server" Text="نام :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtName" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblFamily" runat="server" Text="نام خانوادگی :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtFamily" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblCodMeli" runat="server" Text="کد ملی :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtCodMeli" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblMobil" runat="server" Text="شماره مبایل :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtMobil" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblEmail" runat="server" Text="پست الکترونیک :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtEmail" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblUser" runat="server" Text="نام کاربری :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtUser" runat="server" Enabled="False" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblPass" runat="server" Text="کلمه عبور :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtPass" runat="server" Width="150"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblTypeUser" runat="server" Text="نوع کاربر :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="ddlTypeUser" runat="server" Width="150">
                                        <asp:ListItem Text="مدیر" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="کاربر" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </p>

                                <p>
                                    <asp:Label ID="lblAcceptUser" runat="server" Text="تایید کاربر :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAcceptUser" runat="server" Enabled="False" Width="150"></asp:TextBox>
                                </p>

                                <br />
                                <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" Width="150px" 
                                        onclick="btnEdit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="150px" 
                                        onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>

