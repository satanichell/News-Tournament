<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="User_Edit.aspx.cs" Inherits="Admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش کاربران</div>
						    <div class="panel-body" align="center" dir="rtl">

                                <br />

                                <p align="center">

                                    <asp:Label ID="lblFamily" runat="server" Text="نام خانوادگی"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtFamily" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="جستجو" onclick="Button1_Click" />

                                </p>

                                <p align="center">

                                    <asp:Label ID="lblCodMeli" runat="server" Text="کد ملی"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtCodMeli" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="جستجو" onclick="Button2_Click" />
                                    
                                </p>

                                <p align="center">
                                    
                                    <asp:Label ID="lblMobil" runat="server" Text="شماره مبایل"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtMobil" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Text="جستجو" onclick="Button3_Click" />
                                    
                                </p>

                                <p align="center">
                                    
                                    <asp:Label ID="lblEmail" runat="server" Text="پست الکترونیک"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" Text="جستجو" onclick="Button4_Click" />
                                    
                                </p>

                                <br />

                                <asp:Label ID="lblWarning2" runat="server" Text=""></asp:Label>

                                <br />
                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="ویرایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/User_Edit2.aspx?ID="+Eval("USR_ID") %>'  runat="server">ویرایش</asp:HyperLink>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="حذف" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/User_Edit.aspx?DeleteID="+Eval("USR_ID") %>'  runat="server">حذف</asp:HyperLink>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="نام کاربری" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblUsername" runat="server" Text='<%# Eval("USR_User") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="نام" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("USR_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="نام خانوادگی" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblFamily" runat="server" Text='<%# Eval("USR_Family") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="کد ملی" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCodMeli" runat="server" Text='<%# Eval("USR_CodMeli") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="شماره مبایل" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMobil" runat="server" Text='<%# Eval("USR_Mobil") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پست الکترونیک" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCodMeli" runat="server" Text='<%# Eval("USR_Email") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                <br />
                                <p>
                                    <asp:Label ID="lblWarning" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
</asp:Content>

