<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="User_Active.aspx.cs" Inherits="Admin_AcceptUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">فعال سازی کاربران</div>
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
                                    
                                    <asp:Label ID="lblEmail" runat="server" Text="پست الکترونیک"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Text="جستجو" onclick="Button3_Click" />
                                    
                                </p>

                                <br />
                                <asp:Label ID="lblWarning3" runat="server" Text=""></asp:Label>

                                <br />
                                <br />

                                <asp:Label ID="lblWarning1" runat="server" Text=""></asp:Label>
                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="غیر فعال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate> 
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/User_Active.aspx?InActiveID="+Eval("USR_ID") %>'  runat="server">غیر فعال</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="کد" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text='<%# Bind("USR_ID") %>'></asp:Label>
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
                                <br />
                                <asp:Label ID="lblWarning2" runat="server" Text=""></asp:Label>
                                <br />

                                <asp:GridView ID="GridView2" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="فعال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/User_Active.aspx?ActiveID="+Eval("USR_ID") %>'  runat="server">فعال</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="کد" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("USR_ID") %>'></asp:Label>
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
                                <br />
                            </div>
</asp:Content>