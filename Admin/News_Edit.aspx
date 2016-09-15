<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="News_Edit.aspx.cs" Inherits="Admin_News_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش خبر</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />

                                <p align="center">

                                    <asp:Label ID="lblTitr" runat="server" Text="عنوان خبر"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtTitr" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="جستجو" onclick="Button1_Click" />

                                </p>

                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="ویرایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/News_Edit2.aspx?ID="+Eval("NWS_ID") %>'  runat="server">ویرایش</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="حذف" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/News_Edit.aspx?DeleteID="+Eval("NWS_ID") %>'  runat="server">حذف</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="کد خبر" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("NWS_ID") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="عنوان خبر" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOnwanKhabar" runat="server" Text='<%# Eval("NWS_OnwanKhabar") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="خلاصه خبر" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKholase" runat="server" Text='<%# Eval("NWS_KholaseKhabar") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="عکس خبر" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTasvir" runat="server" Text='<%# Eval("NWS_Tasvir") %>'></asp:Label>
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