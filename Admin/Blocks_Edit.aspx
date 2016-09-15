<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Blocks_Edit.aspx.cs" Inherits="Admin_Blocks_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش بلاک</div>
						    <div class="panel-body" align="center">

                                <br />

                                <% if(Session["Alert"].ToString() == "true") { %>
                                <div class="alert alert-success">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>موفقیت!</strong> ویرایش شد
                                </div>
                                <% } else if(Session["Alert"].ToString() == "false") { %>
                                <div class="alert alert-danger">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>خطا!</strong> ویرایش نشد
                                </div>
                                <% } %>

                                <br />
                                <br />

                                <p>
                                    <label for="txtID">کد بلاک:</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtID" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                                </p>

                                <p>
                                    <label for="txtTitel">عنوان بلاک:</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtTitel" runat="server" Width="200px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:CheckBox ID="chkShowOrNot" Text="نمایش یا عدم نمایش بلاک:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" runat="server" TextAlign="Left" />
                                </p>

                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnAdd" CssClass="btn btn-default" Width="75px" runat="server" Text="ثبت" onclick="btnAdd_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnBack" CssClass="btn btn-default" Width="75px" runat="server" Text="بازگشت" onclick="btnBack_Click" />
                                </p>

                                <br />

                            </div>
</asp:Content>

