<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SettingPanel.aspx.cs" Inherits="Admin_LoginToUserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">تنظیمات سیستم</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="کد تنظیمات" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="عنوان نتظیمات" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Setting_Titel") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="مقدار تنظیمات" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Setting_Value") %>' />
                                        </ItemTemplate>
                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>
                                    </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>

                                <br />
                                <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />
                                <br />
                                
                                <p>
                                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" Width="75px" onclick="btnEdit_Click"  />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>

