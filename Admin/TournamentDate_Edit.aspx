<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TournamentDate_Edit.aspx.cs" Inherits="Admin_TournamentDate_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش زمان مسابقه</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />

                                <p align="center">
                                    <asp:Label ID="lblName" runat="server" Text="نام مسابقه"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="جستجو" onclick="Button1_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </p>

                                <p align="center">
                                    <asp:Label ID="lblDateStart" runat="server" Text="تاریخ شروع"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtDateStart" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="جستجو" onclick="Button2_Click" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="(مانند: 1390/12/30)"></asp:Label>
                                </p>

                                <p align="center">
                                    <asp:Label ID="lblDateEnd" runat="server" Text="تاریخ پایان"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtDateEnd" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Text="جستجو" onclick="Button3_Click"/>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="(مانند: 1390/12/30)"></asp:Label>
                                </p>

                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="ویرایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/TournamentDate_Edit2.aspx?ID="+Eval("DMOS_ID") %>'  runat="server">ویرایش</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="حذف" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/TournamentDate_Edit.aspx?DeleteID="+Eval("DMOS_ID") %>'  runat="server">حذف</asp:HyperLink>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="کد زمان مسابقه" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("DMOS_ID") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="نام مسابقه" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOnwanKhabar" runat="server" Text='<%# Eval("DMOS_Name") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="تاریخ شروع" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRangOnwan" runat="server" Text='<%# Eval("DMOS_StartDate") %>'></asp:Label>
                                        </ItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="تاریخ پایان" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMatnKhabar" runat="server" Text='<%# Eval("DMOS_EndDate") %>'></asp:Label>
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

