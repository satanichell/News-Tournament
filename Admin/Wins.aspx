<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Wins.aspx.cs" Inherits="Admin_Wins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">لیست کاربران</div>
						    <div class="panel-body" align="center" dir="rtl">
                                <br />
                                <p>
                                    <asp:Label ID="lblGhalat" runat="server" Text="تعداد غلط ها :"></asp:Label>&nbsp;
                                    <asp:TextBox ID="txtID" runat="server" Text="0" Width="150px"></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <asp:Label ID="lblMosabeghe" runat="server" Text="مسابقه :"></asp:Label>&nbsp;
                                    <asp:DropDownList ID="ddlDateMos" runat="server" Width="150px"></asp:DropDownList>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="btnShow" runat="server" Text="نمایش" onclick="btnShow_Click" />
                                </p>
                                <br />
                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

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
                                <p>
                                    <asp:Label ID="lblWarning" runat="server"></asp:Label>
                                </p>

                            </div>
</asp:Content>

