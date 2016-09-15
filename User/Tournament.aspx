<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Tournament.aspx.cs" Inherits="User_Tournament" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">مسابقه</div>
						    <div class="panel-body" align="center" dir="rtl">
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="مسابقاتی که میتوانید شرکت کنید" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblWarning1" runat="server" Text=""></asp:Label>
                                <br />
                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        
                                        <asp:TemplateField HeaderText="صفحه سوالات" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" Text='صفحه سوالات' NavigateUrl='<%# "~/User/Questions.aspx?ID="+Eval("DMOS_ID") %>'></asp:HyperLink>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="کد مسابقه" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
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
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="ویرایش جواب مسابقاتی که شرکت نموده اید" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                                <br />
                                <asp:Label ID="lblWarning2" runat="server" Text=""></asp:Label>
                                <br />
                                <asp:GridView ID="GridView2" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        
                                        <asp:TemplateField HeaderText="ویرایش پاسخ ها" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" Text='ویرایش پاسخ ها' NavigateUrl='<%# "~/User/Questions_Edit.aspx?ID="+Eval("DMOS_ID") %>'></asp:HyperLink>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="کد مسابقه" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
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
                            </div>
</asp:Content>

